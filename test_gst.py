import gi
gi.require_version('Gst', '1.0')
from gi.repository import Gst

Gst.init(None)

pipeline = Gst.parse_launch('videotestsrc num-buffers=10 ! amfh264enc ! fakesink')
pipeline.set_state(Gst.State.PLAYING)

bus = pipeline.get_bus()
msg = bus.timed_pop_filtered(
    Gst.CLOCK_TIME_NONE,
    Gst.MessageType.ERROR | Gst.MessageType.EOS
)

if msg.type == Gst.MessageType.ERROR:
    err, debug = msg.parse_error()
    print("Error:", err, debug)
else:
    print("Success")

pipeline.set_state(Gst.State.NULL)
