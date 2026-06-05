package com.megadisplay.client.video

import android.graphics.SurfaceTexture
import android.opengl.GLES20
import android.opengl.GLSurfaceView
import android.opengl.GLUtils
import android.util.Log
import android.view.Surface
import javax.microedition.khronos.egl.EGLConfig
import javax.microedition.khronos.opengles.GL10

class FsrSurfaceView(context: android.content.Context) : GLSurfaceView(context) {

    fun interface OnSurfaceReadyListener {
        fun onSurfaceReady(surface: Surface)
    }

    private val renderer: FsrRenderer

    init {
        setEGLContextClientVersion(2)
        renderer = FsrRenderer { requestRender() }
        setRenderer(renderer)
        renderMode = RENDERMODE_WHEN_DIRTY
    }

    fun setEncodeSize(width: Int, height: Int) {
        renderer.setEncodeSize(width, height)
    }

    fun setOnSurfaceReadyListener(listener: OnSurfaceReadyListener) {
        renderer.surfaceReadyListener = listener
    }

    class FsrRenderer(private val requestRenderFn: () -> Unit) : Renderer {
        companion object {
            private const val TAG = "FsrRenderer"
        }

        @Volatile var surfaceReadyListener: OnSurfaceReadyListener? = null

        private var program = 0
        private var texId = 0
        private var surfaceTexture: SurfaceTexture? = null
        private var surface: Surface? = null

        @Volatile private var encodeWidth: Int = 0
        @Volatile private var encodeHeight: Int = 0

        private var uTexMatrixLoc = 0
        private var uSrcSizeLoc = 0
        private var aPosLoc = 0

        private val texMatrix = FloatArray(16)
        private val vertexBuffer: java.nio.FloatBuffer

        init {
            val vertices = floatArrayOf(
                -1f, -1f,
                 1f, -1f,
                -1f,  1f,
                 1f,  1f,
            )
            vertexBuffer = java.nio.ByteBuffer
                .allocateDirect(vertices.size * 4)
                .order(java.nio.ByteOrder.nativeOrder())
                .asFloatBuffer()
            vertexBuffer.put(vertices)
            vertexBuffer.position(0)
        }

        fun setEncodeSize(width: Int, height: Int) {
            encodeWidth = width
            encodeHeight = height
            surfaceTexture?.setDefaultBufferSize(width, height)
        }

        override fun onSurfaceCreated(gl: GL10?, config: EGLConfig?) {
            Log.i(TAG, "onSurfaceCreated")
            GLES20.glClearColor(0f, 0f, 0f, 1f)

            val vs = compileShader(GLES20.GL_VERTEX_SHADER, VERTEX_SHADER_SRC)
            val fs = compileShader(GLES20.GL_FRAGMENT_SHADER, FRAGMENT_SHADER_SRC)
            program = GLES20.glCreateProgram()
            GLES20.glAttachShader(program, vs)
            GLES20.glAttachShader(program, fs)
            GLES20.glLinkProgram(program)

            val linkStatus = IntArray(1)
            GLES20.glGetProgramiv(program, GLES20.GL_LINK_STATUS, linkStatus, 0)
            if (linkStatus[0] != GLES20.GL_TRUE) {
                val log = GLES20.glGetProgramInfoLog(program)
                GLES20.glDeleteProgram(program)
                throw RuntimeException("Shader link failed: $log")
            }

            uTexMatrixLoc = GLES20.glGetUniformLocation(program, "uTexMatrix")
            uSrcSizeLoc = GLES20.glGetUniformLocation(program, "uSrcSize")
            aPosLoc = GLES20.glGetAttribLocation(program, "aPos")

            val textures = IntArray(1)
            GLES20.glGenTextures(1, textures, 0)
            texId = textures[0]
            GLES20.glBindTexture(GL_TEXTURE_EXTERNAL_OES, texId)
            GLES20.glTexParameteri(GL_TEXTURE_EXTERNAL_OES, GLES20.GL_TEXTURE_MIN_FILTER, GLES20.GL_LINEAR)
            GLES20.glTexParameteri(GL_TEXTURE_EXTERNAL_OES, GLES20.GL_TEXTURE_MAG_FILTER, GLES20.GL_LINEAR)
            GLES20.glTexParameteri(GL_TEXTURE_EXTERNAL_OES, GLES20.GL_TEXTURE_WRAP_S, GLES20.GL_CLAMP_TO_EDGE)
            GLES20.glTexParameteri(GL_TEXTURE_EXTERNAL_OES, GLES20.GL_TEXTURE_WRAP_T, GLES20.GL_CLAMP_TO_EDGE)

            val st = SurfaceTexture(texId)
            st.setOnFrameAvailableListener { requestRenderFn() }
            if (encodeWidth > 0 && encodeHeight > 0) {
                st.setDefaultBufferSize(encodeWidth, encodeHeight)
            }
            surfaceTexture = st
            surface = Surface(st)
            Log.i(TAG, "SurfaceTexture created, texId=$texId")

            android.os.Handler(android.os.Looper.getMainLooper()).post {
                surface?.let { surfaceReadyListener?.onSurfaceReady(it) }
            }
        }

        override fun onSurfaceChanged(gl: GL10?, width: Int, height: Int) {
            Log.i(TAG, "onSurfaceChanged: ${width}x${height}")
            GLES20.glViewport(0, 0, width, height)
        }

        override fun onDrawFrame(gl: GL10?) {
            val st = surfaceTexture ?: return
            st.updateTexImage()
            st.getTransformMatrix(texMatrix)

            GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT)
            GLES20.glUseProgram(program)

            GLES20.glActiveTexture(GLES20.GL_TEXTURE0)
            GLES20.glBindTexture(GL_TEXTURE_EXTERNAL_OES, texId)

            GLES20.glUniformMatrix4fv(uTexMatrixLoc, 1, false, texMatrix, 0)
            if (encodeWidth > 0 && encodeHeight > 0) {
                GLES20.glUniform2f(uSrcSizeLoc, encodeWidth.toFloat(), encodeHeight.toFloat())
            }

            GLES20.glEnableVertexAttribArray(aPosLoc)
            GLES20.glVertexAttribPointer(aPosLoc, 2, GLES20.GL_FLOAT, false, 8, vertexBuffer)
            GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP, 0, 4)
            GLES20.glDisableVertexAttribArray(aPosLoc)
        }

        private fun compileShader(type: Int, src: String): Int {
            val shader = GLES20.glCreateShader(type)
            GLES20.glShaderSource(shader, src)
            GLES20.glCompileShader(shader)
            val status = IntArray(1)
            GLES20.glGetShaderiv(shader, GLES20.GL_COMPILE_STATUS, status, 0)
            if (status[0] != GLES20.GL_TRUE) {
                val log = GLES20.glGetShaderInfoLog(shader)
                GLES20.glDeleteShader(shader)
                throw RuntimeException("Shader compile failed: $log")
            }
            return shader
        }
    }

    companion object {
        private const val GL_TEXTURE_EXTERNAL_OES = 0x8D65

        private const val VERTEX_SHADER_SRC = """
precision highp float;
attribute vec2 aPos;
uniform mat4 uTexMatrix;
varying vec2 vUV;
void main() {
    vec2 uv = aPos * 0.5 + 0.5;
    vUV = (uTexMatrix * vec4(uv, 0.0, 1.0)).xy;
    gl_Position = vec4(aPos, 0.0, 1.0);
}
"""

        private const val FRAGMENT_SHADER_SRC = """
#extension GL_OES_EGL_image_external : require
precision highp float;
uniform samplerExternalOES uTex;
uniform vec2 uSrcSize;
varying vec2 vUV;

// Catmull-Rom bicubic weight (B=0, C=0.5)
float catmullRom(float x) {
    float ax = abs(x);
    if (ax < 1.0) return 1.5*ax*ax*ax - 2.5*ax*ax + 1.0;
    if (ax < 2.0) return -0.5*ax*ax*ax + 2.5*ax*ax - 4.0*ax + 2.0;
    return 0.0;
}

void main() {
    if (uSrcSize.x < 1.0 || uSrcSize.y < 1.0) {
        gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }

    vec2 srcPos = vUV * uSrcSize - 0.5;
    vec2 ip = floor(srcPos);
    vec2 fp = srcPos - ip;

    vec3 color = vec3(0.0);
    float wsum = 0.0;

    for (int dy = -1; dy <= 2; dy++) {
        for (int dx = -1; dx <= 2; dx++) {
            vec2 sp = (ip + vec2(float(dx), float(dy)) + 0.5) / uSrcSize;
            float w = catmullRom(float(dx) - fp.x) * catmullRom(float(dy) - fp.y);
            color += texture2D(uTex, sp).rgb * w;
            wsum += w;
        }
    }

    gl_FragColor = vec4(color / wsum, 1.0);
}
"""
    }
}
