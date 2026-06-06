import android.view.View
import android.view.MotionEvent
fun test(v: View, e: MotionEvent) {
    v.requestUnbufferedDispatch(e)
}
