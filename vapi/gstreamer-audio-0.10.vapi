/* gstreamer-audio-0.10.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", lower_case_cprefix = "gst_")]
namespace Gst {
	[CCode (cheader_filename = "gst/audio/gstaudioclock.h")]
	public class AudioClock : Gst.SystemClock {
		public void* abidata;
		public weak Gst.AudioClockGetTimeFunc func;
		public Gst.ClockTime last_time;
		public void* user_data;
		[CCode (type = "GstClock*", has_construct_function = false)]
		public AudioClock (string name, Gst.AudioClockGetTimeFunc func);
		public static Gst.ClockTime adjust (Gst.Clock clock, Gst.ClockTime time);
		[CCode (type = "GstClock*", has_construct_function = false)]
		public AudioClock.full (string name, Gst.AudioClockGetTimeFunc func, GLib.DestroyNotify destroy_notify);
		public static Gst.ClockTime get_time (Gst.Clock clock);
		public static void invalidate (Gst.Clock clock);
		public void reset (Gst.ClockTime time);
	}
	[CCode (cheader_filename = "gst/audio/gstaudiofilter.h")]
	public class AudioFilter : Gst.BaseTransform {
		public weak Gst.RingBufferSpec format;
		[CCode (has_construct_function = false)]
		protected AudioFilter ();
		[CCode (cname = "gst_audio_filter_class_add_pad_templates")]
		public class void add_pad_templates (Gst.Caps allowed_caps);
		[NoWrapper]
		public virtual bool setup (Gst.RingBufferSpec format);
	}
	[CCode (cheader_filename = "gst/audio/gstaudiosink.h")]
	public class AudioSink : Gst.BaseAudioSink {
		public weak GLib.Thread thread;
		[CCode (has_construct_function = false)]
		protected AudioSink ();
		[NoWrapper]
		public virtual bool close ();
		[NoWrapper]
		public virtual uint delay ();
		[NoWrapper]
		public virtual bool open ();
		[NoWrapper]
		public virtual bool prepare (Gst.RingBufferSpec spec);
		[NoWrapper]
		public virtual void reset ();
		[NoWrapper]
		public virtual bool unprepare ();
		[NoWrapper]
		public virtual uint write (void* data, uint length);
	}
	[CCode (cheader_filename = "gst/audio/gstaudiosrc.h")]
	public class AudioSrc : Gst.BaseAudioSrc {
		public weak GLib.Thread thread;
		[CCode (has_construct_function = false)]
		protected AudioSrc ();
		[NoWrapper]
		public virtual bool close ();
		[NoWrapper]
		public virtual uint delay ();
		[NoWrapper]
		public virtual bool open ();
		[NoWrapper]
		public virtual bool prepare (Gst.RingBufferSpec spec);
		[NoWrapper]
		public virtual uint read (void* data, uint length);
		[NoWrapper]
		public virtual void reset ();
		[NoWrapper]
		public virtual bool unprepare ();
	}
	[CCode (cheader_filename = "gst/audio/gstaudiosink.h")]
	public class BaseAudioSink : Gst.BaseSink {
		public void* abidata;
		public uint64 next_sample;
		public weak Gst.Clock provided_clock;
		public weak Gst.RingBuffer ringbuffer;
		[CCode (has_construct_function = false)]
		protected BaseAudioSink ();
		public virtual unowned Gst.RingBuffer create_ringbuffer ();
		public int64 get_drift_tolerance ();
		public bool get_provide_clock ();
		public Gst.BaseAudioSinkSlaveMethod get_slave_method ();
		[NoWrapper]
		public virtual unowned Gst.Buffer payload (Gst.Buffer buffer);
		public void set_drift_tolerance (int64 drift_tolerance);
		public void set_provide_clock (bool provide);
		public void set_slave_method (Gst.BaseAudioSinkSlaveMethod method);
		[NoAccessorMethod]
		public int64 buffer_time { get; set; }
		[NoAccessorMethod]
		public bool can_activate_pull { get; set; }
		public int64 drift_tolerance { get; set; }
		[NoAccessorMethod]
		public int64 latency_time { get; set; }
		public bool provide_clock { get; set; }
		public Gst.BaseAudioSinkSlaveMethod slave_method { get; set; }
	}
	[CCode (cheader_filename = "gst/audio/gstaudiosrc.h")]
	public class BaseAudioSrc : Gst.PushSrc {
		public weak Gst.Clock clock;
		public uint64 next_sample;
		public weak Gst.RingBuffer ringbuffer;
		[CCode (has_construct_function = false)]
		protected BaseAudioSrc ();
		public virtual unowned Gst.RingBuffer create_ringbuffer ();
		public bool get_provide_clock ();
		public Gst.BaseAudioSrcSlaveMethod get_slave_method ();
		public void set_provide_clock (bool provide);
		public void set_slave_method (Gst.BaseAudioSrcSlaveMethod method);
		[NoAccessorMethod]
		public int64 actual_buffer_time { get; }
		[NoAccessorMethod]
		public int64 actual_latency_time { get; }
		[NoAccessorMethod]
		public int64 buffer_time { get; set; }
		[NoAccessorMethod]
		public int64 latency_time { get; set; }
		public bool provide_clock { get; set; }
		public Gst.BaseAudioSrcSlaveMethod slave_method { get; set; }
	}
	[CCode (cheader_filename = "gst/audio/gstaudiofilter.h")]
	public class RingBuffer : Gst.Object {
		public void* abidata;
		public bool acquired;
		public weak Gst.RingBufferCallback callback;
		public void* cb_data;
		public weak GLib.Cond cond;
		public weak Gst.Buffer data;
		public uchar empty_seg;
		public bool open;
		public int samples_per_seg;
		public int segbase;
		public int segdone;
		public Gst.RingBufferSegState segstate;
		public weak Gst.RingBufferSpec spec;
		public int state;
		public int waiting;
		[CCode (has_construct_function = false)]
		protected RingBuffer ();
		public virtual bool acquire (Gst.RingBufferSpec spec);
		public virtual bool activate (bool active);
		public void advance (uint advance);
		public void clear (int segment);
		public virtual void clear_all ();
		public virtual bool close_device ();
		public virtual uint commit (uint64 sample, uchar[] data, uint len);
		public uint commit_full (uint64 sample, uchar[] data, int in_samples, int out_samples, ref int accum);
		public bool convert (Gst.Format src_fmt, int64 src_val, Gst.Format dest_fmt, out int64 dest_val);
		public static void debug_spec_buff (Gst.RingBufferSpec spec);
		public static void debug_spec_caps (Gst.RingBufferSpec spec);
		public virtual uint delay ();
		public bool device_is_open ();
		public bool is_acquired ();
		public bool is_active ();
		public void may_start (bool allowed);
		public virtual bool open_device ();
		public static bool parse_caps (Gst.RingBufferSpec spec, Gst.Caps caps);
		public virtual bool pause ();
		public bool prepare_read (int segment, uchar readptr, int len);
		public uint read (uint64 sample, uchar[] data, uint len);
		public virtual bool release ();
		[NoWrapper]
		public virtual bool resume ();
		public uint64 samples_done ();
		public void set_callback (Gst.RingBufferCallback cb);
		public void set_flushing (bool flushing);
		public void set_sample (uint64 sample);
		public virtual bool start ();
		public virtual bool stop ();
	}
	[Compact]
	[CCode (cheader_filename = "gst/audio/gstaudiofilter.h")]
	public class RingBufferSpec {
		public bool bigend;
		public uint64 buffer_time;
		public int bytes_per_sample;
		public weak Gst.Caps caps;
		public int channels;
		public int depth;
		public Gst.BufferFormat format;
		public uint64 latency_time;
		public int rate;
		public int seglatency;
		public int segsize;
		public int segtotal;
		public bool sign;
		[CCode (array_length = false)]
		public weak uchar[] silence_sample;
		public Gst.BufferFormatType type;
		public int width;
	}
	[CCode (cprefix = "GST_AUDIO_CHANNEL_POSITION_", cheader_filename = "gst/audio/multichannel.h")]
	public enum AudioChannelPosition {
		INVALID,
		FRONT_MONO,
		FRONT_LEFT,
		FRONT_RIGHT,
		REAR_CENTER,
		REAR_LEFT,
		REAR_RIGHT,
		LFE,
		FRONT_CENTER,
		FRONT_LEFT_OF_CENTER,
		FRONT_RIGHT_OF_CENTER,
		SIDE_LEFT,
		SIDE_RIGHT,
		NONE,
		NUM
	}
	[CCode (cprefix = "GST_AUDIO_FIELD_", has_type_id = false, cheader_filename = "gst/audio/audio.h")]
	public enum AudioFieldFlag {
		RATE,
		CHANNELS,
		ENDIANNESS,
		WIDTH,
		DEPTH,
		SIGNED
	}
	[CCode (cprefix = "GST_BASE_AUDIO_SINK_SLAVE_", cheader_filename = "gst/audio/gstbaseaudiosink.h")]
	public enum BaseAudioSinkSlaveMethod {
		RESAMPLE,
		SKEW,
		NONE
	}
	[CCode (cprefix = "GST_BASE_AUDIO_SRC_SLAVE_", cheader_filename = "gst/audio/audio.h")]
	public enum BaseAudioSrcSlaveMethod {
		RESAMPLE,
		RETIMESTAMP,
		SKEW,
		NONE
	}
	[CCode (cprefix = "GST_", cheader_filename = "gst/audio/gstringbuffer.h")]
	public enum BufferFormat {
		UNKNOWN,
		S8,
		U8,
		S16_LE,
		S16_BE,
		U16_LE,
		U16_BE,
		S24_LE,
		S24_BE,
		U24_LE,
		U24_BE,
		S32_LE,
		S32_BE,
		U32_LE,
		U32_BE,
		S24_3LE,
		S24_3BE,
		U24_3LE,
		U24_3BE,
		S20_3LE,
		S20_3BE,
		U20_3LE,
		U20_3BE,
		S18_3LE,
		S18_3BE,
		U18_3LE,
		U18_3BE,
		FLOAT32_LE,
		FLOAT32_BE,
		FLOAT64_LE,
		FLOAT64_BE,
		MU_LAW,
		A_LAW,
		IMA_ADPCM,
		MPEG,
		GSM,
		IEC958,
		AC3,
		EAC3,
		DTS,
		MPEG2_AAC,
		MPEG4_AAC
	}
	[CCode (cprefix = "GST_BUFTYPE_", cheader_filename = "gst/audio/gstringbuffer.h")]
	public enum BufferFormatType {
		LINEAR,
		FLOAT,
		MU_LAW,
		A_LAW,
		IMA_ADPCM,
		MPEG,
		GSM,
		IEC958,
		AC3,
		EAC3,
		DTS,
		MPEG2_AAC,
		MPEG4_AAC
	}
	[CCode (cprefix = "GST_SEGSTATE_", cheader_filename = "gst/audio/gstringbuffer.h")]
	public enum RingBufferSegState {
		INVALID,
		EMPTY,
		FILLED,
		PARTIAL
	}
	[CCode (cprefix = "GST_RING_BUFFER_STATE_", cheader_filename = "gst/audio/gstringbuffer.h")]
	public enum RingBufferState {
		STOPPED,
		PAUSED,
		STARTED
	}
	[CCode (cheader_filename = "gst/audio/gstaudioclock.h")]
	public delegate Gst.ClockTime AudioClockGetTimeFunc (Gst.Clock clock);
	[CCode (cheader_filename = "gst/audio/mixerutils.h")]
	public delegate bool AudioMixerFilterFunc (Gst.Mixer mixer);
	[CCode (cheader_filename = "gst/audio/gstringbuffer.h")]
	public delegate void RingBufferCallback (Gst.RingBuffer rbuf, uchar data, uint len);
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public const int AUDIO_DEF_RATE;
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public const string AUDIO_FLOAT_PAD_TEMPLATE_CAPS;
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public const string AUDIO_FLOAT_STANDARD_PAD_TEMPLATE_CAPS;
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public const string AUDIO_INT_PAD_TEMPLATE_CAPS;
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public const string AUDIO_INT_STANDARD_PAD_TEMPLATE_CAPS;
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public static unowned Gst.Buffer audio_buffer_clip (Gst.Buffer buffer, Gst.Segment segment, int rate, int frame_size);
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public static bool audio_check_channel_positions (Gst.AudioChannelPosition pos, uint channels);
	[CCode (cheader_filename = "gst/audio/mixerutils.h")]
	public static GLib.List<Gst.Element> audio_default_registry_mixer_filter (Gst.AudioMixerFilterFunc filter_func, bool first);
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public static Gst.ClockTime audio_duration_from_pad_buffer (Gst.Pad pad, Gst.Buffer buf);
	[CCode (cheader_filename = "gst/audio/multichannel.h")]
	public static Gst.AudioChannelPosition audio_fixate_channel_positions (Gst.Structure str);
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public static int audio_frame_byte_size (Gst.Pad pad);
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public static long audio_frame_length (Gst.Pad pad, Gst.Buffer buf);
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public static Gst.AudioChannelPosition audio_get_channel_positions (Gst.Structure str);
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public static uint audio_iec61937_frame_size (Gst.RingBufferSpec spec);
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public static bool audio_iec61937_payload (uchar src, uint src_n, uchar dst, uint dst_n, Gst.RingBufferSpec spec);
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public static bool audio_is_buffer_framed (Gst.Pad pad, Gst.Buffer buf);
	[CCode (cheader_filename = "gst/audio/multichannel.h")]
	public static void audio_set_caps_channel_positions_list (Gst.Caps caps, Gst.AudioChannelPosition pos, int num_positions);
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public static void audio_set_channel_positions (Gst.Structure str, Gst.AudioChannelPosition pos);
	[CCode (cheader_filename = "gst/audio/multichannel.h")]
	public static void audio_set_structure_channel_positions_list (Gst.Structure str, Gst.AudioChannelPosition pos, int num_positions);
	[CCode (cheader_filename = "gst/audio/audio.h")]
	public static void audio_structure_set_int (Gst.Structure structure, Gst.AudioFieldFlag flag);
}
