package com.megadisplay.client.video

import android.content.Context
import android.opengl.GLSurfaceView
import android.util.Log
import android.view.SurfaceHolder
import javax.microedition.khronos.egl.EGL10
import javax.microedition.khronos.egl.EGLConfig
import javax.microedition.khronos.opengles.GL10

class VideoSurfaceView(context: Context) : GLSurfaceView(context) {
    init {
        setEGLContextClientVersion(2)
        setEGLConfigChooser(8, 8, 8, 8, 0, 0)
        setRenderer(MirrorRenderer())
        renderMode = GLSurfaceView.RENDERMODE_WHEN_DIRTY
        preserveEGLContextOnPause = true
    }

    var surface: android.view.Surface? = null
        private set

    override fun surfaceCreated(holder: SurfaceHolder) {
        super.surfaceCreated(holder)
        surface = holder.surface
    }

    override fun surfaceDestroyed(holder: SurfaceHolder) {
        surface = null
        super.surfaceDestroyed(holder)
    }

    private inner class MirrorRenderer : GLSurfaceView.Renderer {
        override fun onSurfaceCreated(gl: GL10, config: EGLConfig) {
            gl.glClearColor(0f, 0f, 0f, 1f)
        }

        override fun onSurfaceChanged(gl: GL10, width: Int, height: Int) {
            gl.glViewport(0, 0, width, height)
        }

        override fun onDrawFrame(gl: GL10) {
            gl.glClear(GL10.GL_COLOR_BUFFER_BIT)
        }
    }
}
