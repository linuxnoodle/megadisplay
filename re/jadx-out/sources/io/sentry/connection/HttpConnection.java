package io.sentry.connection;

import com.android.volley.toolbox.HttpHeaderParser;
import io.sentry.environment.SentryEnvironment;
import io.sentry.marshaller.Marshaller;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public class HttpConnection extends AbstractConnection {
    public static final int HTTP_TOO_MANY_REQUESTS = 429;
    private static final String SENTRY_AUTH = "X-Sentry-Auth";
    private static final String USER_AGENT = "User-Agent";
    private boolean bypassSecurity;
    private int connectionTimeout;
    private EventSampler eventSampler;
    private Marshaller marshaller;
    private final Proxy proxy;
    private int readTimeout;
    private final URL sentryUrl;
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) HttpConnection.class);
    private static final int DEFAULT_CONNECTION_TIMEOUT = (int) TimeUnit.SECONDS.toMillis(1);
    private static final int DEFAULT_READ_TIMEOUT = (int) TimeUnit.SECONDS.toMillis(5);
    private static final HostnameVerifier NAIVE_VERIFIER = new HostnameVerifier() { // from class: io.sentry.connection.HttpConnection.1
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    };

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public HttpConnection(URL url, String str, String str2, Proxy proxy, EventSampler eventSampler) {
        super(str, str2);
        this.connectionTimeout = DEFAULT_CONNECTION_TIMEOUT;
        this.readTimeout = DEFAULT_READ_TIMEOUT;
        this.bypassSecurity = false;
        this.sentryUrl = url;
        this.proxy = proxy;
        this.eventSampler = eventSampler;
    }

    public static URL getSentryApiUrl(URI uri, String str) {
        try {
            return new URL(uri.toString() + "api/" + str + "/store/");
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Couldn't build a valid URL from the Sentry API.", e);
        }
    }

    protected HttpURLConnection getConnection() {
        HttpURLConnection httpURLConnection;
        try {
            Proxy proxy = this.proxy;
            if (proxy != null) {
                httpURLConnection = (HttpURLConnection) this.sentryUrl.openConnection(proxy);
            } else {
                httpURLConnection = (HttpURLConnection) this.sentryUrl.openConnection();
            }
            if (this.bypassSecurity && (httpURLConnection instanceof HttpsURLConnection)) {
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(NAIVE_VERIFIER);
            }
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setConnectTimeout(this.connectionTimeout);
            httpURLConnection.setReadTimeout(this.readTimeout);
            httpURLConnection.setRequestProperty(USER_AGENT, SentryEnvironment.getSentryName());
            httpURLConnection.setRequestProperty(SENTRY_AUTH, getAuthHeader());
            if (this.marshaller.getContentType() != null) {
                httpURLConnection.setRequestProperty(HttpHeaderParser.HEADER_CONTENT_TYPE, this.marshaller.getContentType());
            }
            if (this.marshaller.getContentEncoding() != null) {
                httpURLConnection.setRequestProperty("Content-Encoding", this.marshaller.getContentEncoding());
            }
            return httpURLConnection;
        } catch (IOException e) {
            throw new IllegalStateException("Couldn't set up a connection to the Sentry server.", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0059 A[Catch: all -> 0x002b, IOException -> 0x0088, TRY_LEAVE, TryCatch #1 {IOException -> 0x0088, blocks: (B:21:0x0052, B:23:0x0059, B:26:0x0077, B:29:0x007f, B:30:0x0086), top: B:47:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0077 A[Catch: all -> 0x002b, IOException -> 0x0088, TRY_ENTER, TryCatch #1 {IOException -> 0x0088, blocks: (B:21:0x0052, B:23:0x0059, B:26:0x0077, B:29:0x007f, B:30:0x0086), top: B:47:0x0052 }] */
    @Override // io.sentry.connection.AbstractConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void doSend(io.sentry.event.Event r10) throws io.sentry.connection.ConnectionException {
        /*
            r9 = this;
            java.lang.String r0 = "Event '"
            io.sentry.connection.EventSampler r1 = r9.eventSampler
            if (r1 == 0) goto Ld
            boolean r1 = r1.shouldSendEvent(r10)
            if (r1 != 0) goto Ld
            return
        Ld:
            java.net.HttpURLConnection r1 = r9.getConnection()
            r1.connect()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            java.io.OutputStream r2 = r1.getOutputStream()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            io.sentry.marshaller.Marshaller r3 = r9.marshaller     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            r3.marshall(r10, r2)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            r2.close()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            java.io.InputStream r2 = r1.getInputStream()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            r2.close()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            r1.disconnect()
            return
        L2b:
            r10 = move-exception
            goto La2
        L2e:
            r2 = move-exception
            java.lang.String r3 = "Retry-After"
            java.lang.String r3 = r1.getHeaderField(r3)     // Catch: java.lang.Throwable -> L2b
            r4 = 0
            if (r3 == 0) goto L49
            double r5 = java.lang.Double.parseDouble(r3)     // Catch: java.lang.Throwable -> L2b java.lang.NumberFormatException -> L49
            r7 = 4652007308841189376(0x408f400000000000, double:1000.0)
            double r5 = r5 * r7
            long r5 = (long) r5     // Catch: java.lang.Throwable -> L2b java.lang.NumberFormatException -> L49
            java.lang.Long r3 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> L2b java.lang.NumberFormatException -> L49
            goto L4a
        L49:
            r3 = r4
        L4a:
            int r5 = r1.getResponseCode()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L87
            java.lang.Integer r6 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L87
            r6.getClass()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            r7 = 403(0x193, float:5.65E-43)
            if (r5 != r7) goto L77
            org.slf4j.Logger r5 = io.sentry.connection.HttpConnection.logger     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            r7.<init>(r0)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            java.util.UUID r10 = r10.getId()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            r7.append(r10)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            java.lang.String r10 = "' was rejected by the Sentry server due to a filter."
            r7.append(r10)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            java.lang.String r10 = r7.toString()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            r5.debug(r10)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            r1.disconnect()
            return
        L77:
            r6.getClass()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            r10 = 429(0x1ad, float:6.01E-43)
            if (r5 == r10) goto L7f
            goto L88
        L7f:
            io.sentry.connection.TooManyRequestsException r10 = new io.sentry.connection.TooManyRequestsException     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            java.lang.String r0 = "Too many requests to Sentry: https://docs.sentry.io/learn/quotas/"
            r10.<init>(r0, r2, r3, r6)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
            throw r10     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L88
        L87:
            r6 = r4
        L88:
            java.io.InputStream r10 = r1.getErrorStream()     // Catch: java.lang.Throwable -> L2b
            if (r10 == 0) goto L92
            java.lang.String r4 = r9.getErrorMessageFromStream(r10)     // Catch: java.lang.Throwable -> L2b
        L92:
            if (r4 == 0) goto L9a
            boolean r10 = r4.isEmpty()     // Catch: java.lang.Throwable -> L2b
            if (r10 == 0) goto L9c
        L9a:
            java.lang.String r4 = "An exception occurred while submitting the event to the Sentry server."
        L9c:
            io.sentry.connection.ConnectionException r10 = new io.sentry.connection.ConnectionException     // Catch: java.lang.Throwable -> L2b
            r10.<init>(r4, r2, r3, r6)     // Catch: java.lang.Throwable -> L2b
            throw r10     // Catch: java.lang.Throwable -> L2b
        La2:
            r1.disconnect()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.connection.HttpConnection.doSend(io.sentry.event.Event):void");
    }

    private String getErrorMessageFromStream(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, UTF_8));
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (!z) {
                    sb.append("\n");
                }
                sb.append(line);
                z = false;
            } catch (Exception e) {
                logger.error("Exception while reading the error message from the connection.", (Throwable) e);
            }
        }
        return sb.toString();
    }

    @Deprecated
    public void setTimeout(int i) {
        this.connectionTimeout = i;
    }

    public void setConnectionTimeout(int i) {
        this.connectionTimeout = i;
    }

    public void setReadTimeout(int i) {
        this.readTimeout = i;
    }

    public void setMarshaller(Marshaller marshaller) {
        this.marshaller = marshaller;
    }

    public void setBypassSecurity(boolean z) {
        this.bypassSecurity = z;
    }
}
