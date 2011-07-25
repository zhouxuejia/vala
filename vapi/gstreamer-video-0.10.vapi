/* gstreamer-video-0.10.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", lower_case_cprefix = "gst_")]
namespace Gst {
	[CCode (cprefix = "GST_VIDEO_CAPS_", lower_case_cprefix = "gst_video_caps_")]
	namespace VideoCaps {
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string ABGR;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string ARGB;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string BGR;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string BGRA;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string BGRx;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string BGRx_HOST_ENDIAN;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string RGB;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string RGBA;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string RGB_15;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string RGB_16;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string RGBx;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string xBGR;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string xRGB;
		[CCode (cheader_filename = "gst/video/video.h")]
		public const string xRGB_HOST_ENDIAN;
		[CCode (cname = "GST_VIDEO_CAPS_YUV", cheader_filename = "gst/video/video.h")]
		public static unowned string YUV (string fourcc);
	}
	[CCode (cprefix = "GstVideoMask15", lower_case_cprefix = "gst_video_mask15_")]
	namespace VideoMask15 {
		[CCode (cname = "GST_VIDEO_BLUE_MASK_15", cheader_filename = "gst/video/video.h")]
		public const string BLUE;
		[CCode (cname = "GST_VIDEO_BLUE_MASK_15_INT", cheader_filename = "gst/video/video.h")]
		public const int BLUE_INT;
		[CCode (cname = "GST_VIDEO_GREEN_MASK_15", cheader_filename = "gst/video/video.h")]
		public const string GREEN;
		[CCode (cname = "GST_VIDEO_GREEN_MASK_15_INT", cheader_filename = "gst/video/video.h")]
		public const int GREEN_INT;
		[CCode (cname = "GST_VIDEO_RED_MASK_15", cheader_filename = "gst/video/video.h")]
		public const string RED;
		[CCode (cname = "GST_VIDEO_RED_MASK_15_INT", cheader_filename = "gst/video/video.h")]
		public const int RED_INT;
	}
	[CCode (cprefix = "GstVideoMask16", lower_case_cprefix = "gst_video_mask16_")]
	namespace VideoMask16 {
		[CCode (cname = "GST_VIDEO_BLUE_MASK_16", cheader_filename = "gst/video/video.h")]
		public const string BLUE;
		[CCode (cname = "GST_VIDEO_BLUE_MASK_16_INT", cheader_filename = "gst/video/video.h")]
		public const int BLUE_INT;
		[CCode (cname = "GST_VIDEO_GREEN_MASK_16", cheader_filename = "gst/video/video.h")]
		public const string GREEN;
		[CCode (cname = "GST_VIDEO_GREEN_MASK_16_INT", cheader_filename = "gst/video/video.h")]
		public const int GREEN_INT;
		[CCode (cname = "GST_VIDEO_RED_MASK_16", cheader_filename = "gst/video/video.h")]
		public const string RED;
		[CCode (cname = "GST_VIDEO_RED_MASK_16_INT", cheader_filename = "gst/video/video.h")]
		public const int RED_INT;
	}
	[CCode (cprefix = "GstVideoMask24", lower_case_cprefix = "gst_video_mask24_")]
	namespace VideoMask24 {
		[CCode (cname = "GST_VIDEO_BYTE1_MASK_24", cheader_filename = "gst/video/video.h")]
		public const string BYTE1;
		[CCode (cname = "GST_VIDEO_BYTE1_MASK_24_INT", cheader_filename = "gst/video/video.h")]
		public const int BYTE1_INT;
		[CCode (cname = "GST_VIDEO_BYTE2_MASK_24", cheader_filename = "gst/video/video.h")]
		public const string BYTE2;
		[CCode (cname = "GST_VIDEO_BYTE2_MASK_24_INT", cheader_filename = "gst/video/video.h")]
		public const int BYTE2_INT;
		[CCode (cname = "GST_VIDEO_BYTE3_MASK_24", cheader_filename = "gst/video/video.h")]
		public const string BYTE3;
		[CCode (cname = "GST_VIDEO_BYTE3_MASK_24_INT", cheader_filename = "gst/video/video.h")]
		public const int BYTE3_INT;
	}
	[CCode (cprefix = "GstVideoMask32", lower_case_cprefix = "gst_video_mask32_")]
	namespace VideoMask32 {
		[CCode (cname = "GST_VIDEO_BYTE1_MASK_32", cheader_filename = "gst/video/video.h")]
		public const string BYTE1;
		[CCode (cname = "GST_VIDEO_BYTE1_MASK_32_INT", cheader_filename = "gst/video/video.h")]
		public const int BYTE1_INT;
		[CCode (cname = "GST_VIDEO_BYTE2_MASK_32", cheader_filename = "gst/video/video.h")]
		public const string BYTE2;
		[CCode (cname = "GST_VIDEO_BYTE2_MASK_32_INT", cheader_filename = "gst/video/video.h")]
		public const int BYTE2_INT;
		[CCode (cname = "GST_VIDEO_BYTE3_MASK_32", cheader_filename = "gst/video/video.h")]
		public const string BYTE3;
		[CCode (cname = "GST_VIDEO_BYTE3_MASK_32_INT", cheader_filename = "gst/video/video.h")]
		public const int BYTE3_INT;
		[CCode (cname = "GST_VIDEO_BYTE4_MASK_32", cheader_filename = "gst/video/video.h")]
		public const string BYTE4;
		[CCode (cname = "GST_VIDEO_BYTE4_MASK_32_INT", cheader_filename = "gst/video/video.h")]
		public const int BYTE4_INT;
	}
	[CCode (cprefix = "GstVideoRange", lower_case_cprefix = "gst_video_range_")]
	namespace VideoRange {
		[CCode (cname = "GST_VIDEO_FPS_RANGE", cheader_filename = "gst/video/video.h")]
		public const string FPS;
		[CCode (cname = "GST_VIDEO_SIZE_RANGE", cheader_filename = "gst/video/video.h")]
		public const string SIZE;
	}
	[CCode (cheader_filename = "gst/video/gstvideofilter.h")]
	public class VideoFilter : Gst.BaseTransform {
		public bool inited;
		[CCode (has_construct_function = false)]
		protected VideoFilter ();
	}
	[Compact]
	[CCode (cheader_filename = "gst/video/gstvideosink.h")]
	public class VideoRectangle {
		public int h;
		public int w;
		public int x;
		public int y;
	}
	[CCode (cheader_filename = "gst/video/gstvideosink.h")]
	public class VideoSink : Gst.BaseSink {
		public int height;
		public int width;
		[CCode (has_construct_function = false)]
		protected VideoSink ();
		public static void center_rect (Gst.VideoRectangle src, Gst.VideoRectangle dst, Gst.VideoRectangle _result, bool scaling);
		[NoWrapper]
		public virtual Gst.FlowReturn show_frame (Gst.Buffer buf);
		[NoAccessorMethod]
		public bool show_preroll_frame { get; set construct; }
	}
	[CCode (cprefix = "GST_VIDEO_FORMAT_", cheader_filename = "gst/video/video.h")]
	public enum VideoFormat {
		UNKNOWN,
		I420,
		YV12,
		YUY2,
		UYVY,
		AYUV,
		RGBx,
		BGRx,
		xRGB,
		xBGR,
		RGBA,
		BGRA,
		ARGB,
		ABGR,
		RGB,
		BGR,
		Y41B,
		Y42B,
		YVYU,
		Y444,
		v210,
		v216,
		NV12,
		NV21,
		GRAY8,
		GRAY16_BE,
		GRAY16_LE,
		v308,
		Y800,
		Y16,
		RGB16,
		BGR16,
		RGB15,
		BGR15,
		UYVP,
		A420,
		RGB8_PALETTED,
		YUV9,
		YVU9,
		IYU1,
		ARGB64,
		AYUV64,
		r210
	}
	[CCode (cheader_filename = "gst/video/video.h")]
	public delegate void VideoConvertFrameCallback (Gst.Buffer buf, GLib.Error error);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_calculate_display_ratio (ref uint dar_n, ref uint dar_d, uint video_width, uint video_height, uint video_par_n, uint video_par_d, uint display_par_n, uint display_par_d);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static unowned Gst.Buffer video_convert_frame (Gst.Buffer buf, Gst.Caps to_caps, Gst.ClockTime timeout) throws GLib.Error;
	[CCode (cheader_filename = "gst/video/video.h")]
	public static void video_convert_frame_async (Gst.Buffer buf, Gst.Caps to_caps, Gst.ClockTime timeout, Gst.VideoConvertFrameCallback callback, GLib.DestroyNotify destroy_notify);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static unowned Gst.Event video_event_new_still_frame (bool in_still);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_event_parse_still_frame (Gst.Event event, bool in_still);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_convert (Gst.VideoFormat format, int width, int height, int fps_n, int fps_d, Gst.Format src_format, int64 src_value, Gst.Format dest_format, ref int64 dest_value);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static Gst.VideoFormat video_format_from_fourcc (uint32 fourcc);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_component_depth (Gst.VideoFormat format, ref int component);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_component_height (Gst.VideoFormat format, ref int component, ref int height);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_component_offset (Gst.VideoFormat format, ref int component, ref int width, ref int height);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_component_width (Gst.VideoFormat format, ref int component, ref int width);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_pixel_stride (Gst.VideoFormat format, ref int component);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_row_stride (Gst.VideoFormat format, ref int component, ref int width);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_size (Gst.VideoFormat format, ref int width, ref int height);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_has_alpha (Gst.VideoFormat format);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_is_gray (Gst.VideoFormat format);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_is_rgb (Gst.VideoFormat format);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_is_yuv (Gst.VideoFormat format);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static Gst.Caps video_format_new_caps (Gst.VideoFormat format, int width, int height, int framerate_n, int framerate_d, int par_n, int par_d);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static Gst.Caps video_format_new_caps_interlaced (Gst.VideoFormat format, int width, int height, int framerate_n, int framerate_d, int par_n, int par_d, bool interlaced);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static unowned Gst.Caps video_format_new_template_caps (Gst.VideoFormat format);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_parse_caps (Gst.Caps caps, ref Gst.VideoFormat format, ref int width, ref int height);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_parse_caps_interlaced (Gst.Caps caps, bool interlaced);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static uint32 video_format_to_fourcc (Gst.VideoFormat format);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static Gst.Value video_frame_rate (Gst.Pad pad);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_get_size (Gst.Pad pad, ref int width, ref int height);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_get_size_from_caps (Gst.Caps caps, int size);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static unowned string video_parse_caps_chroma_site (Gst.Caps caps);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static unowned string video_parse_caps_color_matrix (Gst.Caps caps);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_parse_caps_framerate (Gst.Caps caps, ref int fps_n, ref int fps_d);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static unowned Gst.Buffer video_parse_caps_palette (Gst.Caps caps);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_parse_caps_pixel_aspect_ratio (Gst.Caps caps, ref int par_n, ref int par_d);
}
