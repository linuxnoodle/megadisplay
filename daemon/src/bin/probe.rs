use gstreamer as gst;
use gstreamer_video as gst_video;

fn main() {
    let mut buffer = gst::Buffer::new();
    let format = gst_video::VideoFormat::Bgra;
    let width = 1920;
    let height = 1200;
    let stride = 8192; // example
    
    // Check how to add full video meta in Rust
    gst_video::VideoMeta::add_full(
        buffer.get_mut().unwrap(),
        gst_video::VideoFrameFlags::empty(),
        format,
        width,
        height,
        &[0], // offset
        &[stride], // stride
    ).unwrap();
}
