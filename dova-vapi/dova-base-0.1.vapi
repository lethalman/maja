/* dova-base-0.1.vapi generated by valac 0.11.0.151-6fc7, do not modify. */

[CCode (cprefix = "Dova", lower_case_cprefix = "dova_")]
namespace Dova {
	[CCode (cheader_filename = "dova-base.h")]
	public class Array<T> : Dova.Object {
		public Array (int length);
		public Dova.Iterator<T> iterator ();
		public static void resize<T> (ref T[] array, int new_length);
		public void* data { get; private set; }
		public int length { get; private set; }
	}
	[CCode (cheader_filename = "dova-base.h")]
	public abstract class Delegate : Dova.Object {
		protected Delegate (Dova.Object? target);
		public Dova.Object? target { get; private set; }
	}
	[CCode (cheader_filename = "dova-base.h")]
	public class Error : Dova.Object {
		public Error (string message);
		public string message { get; set; }
	}
	[CCode (cheader_filename = "dova-base.h")]
	public abstract class Iterator<T> : Dova.Object {
		public Iterator ();
		public abstract T get ();
		public abstract bool next ();
	}
	[CCode (cheader_filename = "dova-base.h")]
	public class List<T> : Dova.Object {
		public List (int length, T[] elements);
		public Dova.List<T> append (T element);
		public Dova.List<T> concat (Dova.List<T> list2);
		public T get (int index);
		public Dova.Iterator<T> iterator ();
		public Dova.List<T> remove_last ();
		public Dova.List<T> set (int index, T element);
		public void* data { get; }
		public int length { get; private set; }
	}
	[CCode (cheader_filename = "dova-base.h")]
	public class Map<K,V> : Dova.Object {
		public Map (int nnodes, K[] _keys, V[] _values);
		public Map.clear (int length);
		public V get (K key);
		public Dova.Map<K,V> set (K key, V value);
		public Dova.Set<K> keys { get; }
		public int size { get; }
		public Dova.Set<V> values { get; }
	}
	[CCode (cheader_filename = "dova-base.h")]
	public abstract class Node : Dova.Object {
		public Node ();
		public void append (Dova.Node child);
		public void insert_after (Dova.Node ref_child, Dova.Node child);
		public void insert_before (Dova.Node ref_child, Dova.Node child);
		public void prepend (Dova.Node child);
		public void replace (Dova.Node old_child, Dova.Node new_child);
		public Dova.Node? first_child { get; }
		public Dova.Node? last_child { get; }
		public Dova.Node? next { get; }
		public Dova.Node? parent { get; }
		public Dova.Node? previous { get; }
	}
	[CCode (ref_function = "dova_object_ref", unref_function = "dova_object_unref", cheader_filename = "dova-base.h")]
	public class Object : any {
		public Object ();
		public static Dova.Object* alloc (Dova.Type type);
		public override bool equals (any? other);
		public virtual void finalize ();
		public override uint hash ();
		public static void* ref (void* object);
		public override string to_string ();
		public static void unref (void* object);
		public static void* weak_get (void* object);
		public static void* weak_ref (void* object);
		public static void weak_unref (void* object);
	}
	[CCode (cheader_filename = "dova-base.h")]
	public class Random : Dova.Object {
		public Random ();
		public double next_double (double begin = 0, double end = 1);
		public int32 next_int32 (int32 begin, int32 end);
		public Random.with_seed (int32 seed);
	}
	[CCode (cheader_filename = "dova-base.h")]
	public class Set<T> : Dova.Object {
		public Set (int nnodes, T[] elements);
		public bool contains (T element);
		public Dova.Iterator<T> iterator ();
		public int size { get; }
	}
	[CCode (cheader_filename = "dova-base.h")]
	public class Timer : Dova.Object {
		public Timer ();
		public void reset ();
		public void start ();
		public void stop ();
		public Dova.Time elapsed { get; private set; }
		public bool running { get; private set; }
	}
	[CCode (cheader_filename = "dova-base.h")]
	public class Tuple : Dova.Object {
		public Tuple (int length, Dova.Type** types, void** values);
		public T get<T> (int index);
		public int length { get; private set; }
	}
	[CCode (cheader_filename = "dova-base.h")]
	public abstract class Type : Dova.Object {
		protected Type (Dova.Type? base_type);
		public void add_interface (Dova.Type* interface_type, void* vtable);
		public static new void alloc (Dova.Type base_type, int object_size, int type_size, out Dova.Type* result, out int object_offset, out int type_offset);
		[NoThrow]
		public void* get_interface (Dova.Type* interface_type);
		public void insert_type (Dova.Type type);
		[NoThrow]
		public bool is_subtype_of (Dova.Type type);
		public void value_copy (void* dest, int dest_index, void* src, int src_index);
		public Dova.Type? base_type { get; set; }
		public Dova.Type? generic_type { get; set; }
		public string name { get; set; }
		public Dova.Type? next_type { get; set; }
		public int object_size { get; set; }
		public int type_size { get; set; }
		public int value_size { get; set; }
	}
	[CCode (cheader_filename = "dova-base.h")]
	public class Uri : Dova.Object {
		public Uri (string uri);
		public Dova.Uri resolve (string uri_reference);
		public string to_string ();
		public string? fragment { get; private set; }
		public string? host { get; private set; }
		public string path { get; private set; }
		public int port { get; private set; }
		public string? query { get; private set; }
		public string scheme { get; private set; }
		public string? userinfo { get; private set; }
	}
	[CCode (ref_function = "dova_value_ref", unref_function = "dova_value_unref", cheader_filename = "dova-base.h")]
	public class Value : any {
		protected Value ();
		public static Dova.Value* alloc (Dova.Type type, int extra_size = 0);
		public override bool equals (any? other);
		public virtual void finalize ();
		public override uint hash ();
		public static void* ref (void* object);
		public override string to_string ();
		public static void unref (void* object);
	}
	[CCode (cheader_filename = "dova-base.h")]
	[SimpleType]
	public struct Date {
		public int days;
		public Date (int year, int month, int day);
		public new string to_string ();
		public int day { get; }
		public Dova.DayOfWeek day_of_week { get; }
		public int month { get; }
		public int week { get; }
		public int week_year { get; }
		public int year { get; }
	}
	[CCode (cheader_filename = "dova-base.h")]
	[SimpleType]
	public struct DateTime {
		public Dova.Time utc;
		public Dova.Time offset;
		public DateTime (Dova.Date date, Dova.Time time, Dova.Time offset);
		public string format (string format);
		public DateTime.from_utc (Dova.Time utc, Dova.Time offset);
		public DateTime.local_from_utc (Dova.Time utc);
		public DateTime.now ();
		public static Dova.DateTime parse (string str);
		public Dova.DateTime to_local ();
		public Dova.DateTime to_offset (Dova.Time offset);
		public string to_string ();
		public Dova.DateTime to_utc ();
		public Dova.Date date { get; }
		public int day { get; }
		public int hour { get; }
		public int millisecond { get; }
		public int minute { get; }
		public int month { get; }
		public int second { get; }
		public Dova.Time time { get; }
		public int year { get; }
	}
	[CCode (cheader_filename = "dova-base.h")]
	[SimpleType]
	public struct Time {
		public int64 ticks;
		public Time (int hours = 0, int minutes = 0, int seconds = 0, int milliseconds = 0);
		public Time.days (int days, int hours = 0, int minutes = 0, int seconds = 0, int milliseconds = 0);
		public string to_string ();
		public Time.with_ticks (int64 ticks);
		public int hours { get; }
		public int milliseconds { get; }
		public int minutes { get; }
		public int seconds { get; }
		public int64 total_milliseconds { get; }
		public int64 total_seconds { get; }
	}
	[CCode (cprefix = "DOVA_CLOCK_", cheader_filename = "dova-base.h")]
	public enum Clock {
		UTC,
		MONOTONIC;
		public Dova.Time get_time ();
	}
	[CCode (cprefix = "DOVA_DAY_OF_WEEK_", cheader_filename = "dova-base.h")]
	public enum DayOfWeek {
		MONDAY,
		TUESDAY,
		WEDNESDAY,
		THURSDAY,
		FRIDAY,
		SATURDAY,
		SUNDAY;
		public string to_string ();
	}
	[CCode (cprefix = "DOVA_UNICODE_BIDI_CLASS_", cheader_filename = "dova-base.h")]
	public enum UnicodeBidiClass {
		ARABIC_LETTER,
		ARABIC_NUMBER,
		PARAGRAPH_SEPARATOR,
		BOUNDARY_NEUTRAL,
		COMMON_SEPARATOR,
		EUROPEAN_NUMBER,
		EUROPEAN_SEPARATOR,
		EUROPEAN_TERMINATOR,
		LEFT_TO_RIGHT,
		LEFT_TO_RIGHT_EMBEDDING,
		LEFT_TO_RIGHT_OVERRIDE,
		NONSPACING_MARK,
		OTHER_NEUTRAL,
		POP_DIRECTIONAL_FORMAT,
		RIGHT_TO_LEFT,
		RIGHT_TO_LEFT_EMBEDDING,
		RIGHT_TO_LEFT_OVERRIDE,
		SEGMENT_SEPARATOR,
		WHITE_SPACE
	}
	[CCode (cprefix = "DOVA_UNICODE_CATEGORY_", cheader_filename = "dova-base.h")]
	public enum UnicodeCategory {
		UNASSIGNED,
		UPPERCASE_LETTER,
		LOWERCASE_LETTER,
		TITLECASE_LETTER,
		MODIFIER_LETTER,
		OTHER_LETTER,
		NON_SPACING_MARK,
		ENCLOSING_MARK,
		SPACING_MARK,
		DECIMAL_NUMBER,
		LETTER_NUMBER,
		OTHER_NUMBER,
		SPACE_SEPARATOR,
		LINE_SEPARATOR,
		PARAGRAPH_SEPARATOR,
		CONTROL,
		FORMAT,
		PRIVATE_USE,
		SURROGATE,
		DASH_PUNCTUATION,
		OPEN_PUNCTUATION,
		CLOSE_PUNCTUATION,
		CONNECTOR_PUNCTUATION,
		OTHER_PUNCTUATION,
		MATH_SYMBOL,
		CURRENCY_SYMBOL,
		MODIFIER_SYMBOL,
		OTHER_SYMBOL,
		INITIAL_PUNCTUATION,
		FINAL_PUNCTUATION
	}
	[CCode (cprefix = "DOVA_UNICODE_SCRIPT_", cheader_filename = "dova-base.h")]
	public enum UnicodeScript {
		ARABAIC,
		IMPERIAL_ARAMAIC,
		ARMENIAN,
		AVESTAN,
		BALINESE,
		BAMUM,
		BENGALI,
		BOPOMOFO,
		BRAILLE,
		BUGINESE,
		BUHID,
		CANADIAN_ABORIGINAL,
		CARIAN,
		CHAM,
		CHEROKEE,
		COPTIC,
		CYPRIOT,
		CYRILLIC,
		DEVANAGARI,
		DESERET,
		EGYPTIAN_HIEROGLYPHS,
		ETHIOPIC,
		GEORGIAN,
		GLAGOLITIC,
		GOTHIC,
		GREEK,
		GUJARATI,
		GURMUKHI,
		HANGUL,
		HAN,
		HANUNOO,
		HEBREW,
		HIRAGANA,
		KATAKANA_OR_HIRAGANA,
		OLD_ITALIC,
		JAVANESE,
		KAYAH_LI,
		KATAKANA,
		KHAROSHTHI,
		KHMER,
		KANNADA,
		KAITHI,
		TAI_THAM,
		LAO,
		LATIN,
		LEPCHA,
		LIMBU,
		LINEAR_B,
		LISU,
		LYCIAN,
		LYDIAN,
		MALAYALAM,
		MONGOLIAN,
		MEETEI_MAYEK,
		MYANMAR,
		NKO,
		OGHAM,
		OL_CHIKI,
		OLD_TURKIC,
		ORIYA,
		OSMANYA,
		PHAGS_PA,
		INSCRIPTIONAL_PAHLAVI,
		PHOENICIAN,
		INSCCRIPTIONAL_PARTHIAN,
		REJANG,
		RUNIC,
		SAMARITAN,
		OLD_SOUTH_ARABIAN,
		SAURASHTRA,
		SHAVIAN,
		SINHALA,
		SUNDANESE,
		SYLOTI_NAGRI,
		SYRIAC,
		TAGBANWA,
		TAI_LE,
		NEW_TAI_LUE,
		TAMIL,
		TAI_VIET,
		TELUGU,
		TIFINAGH,
		TAGALOG,
		THAANA,
		THAI,
		TIBETAN,
		UGARITIC,
		VAI,
		OLD_PERSAN,
		CUNEIFORM,
		YI,
		INHERITED,
		COMMON,
		UNKNOWN
	}
	[CCode (cheader_filename = "dova-base.h")]
	public static Dova.Error? error;
	[CCode (cheader_filename = "dova-base.h")]
	public static void assert (bool condition, string? message = null);
	[CCode (cheader_filename = "dova-base.h")]
	public static void assert_compare (string expr, string v1, string cmp, string v2);
	[NoReturn]
	[CCode (cheader_filename = "dova-base.h")]
	public static void assert_not_reached ();
	[CCode (cheader_filename = "dova-base.h")]
	public static void init (int argc, byte** argv);
}
[CCode (ref_function = "any_ref", unref_function = "any_unref", cheader_filename = "dova-base.h")]
public abstract class any {
	public Dova.Type type;
	public any ();
	public abstract bool equals (any? other);
	public abstract uint hash ();
	public bool is_a (Dova.Type type);
	public static void* ref (void* object);
	public abstract string to_string ();
	public static void unref (void* object);
}
[CCode (ref_function = "string_ref", unref_function = "string_unref", cname = "string_t", cheader_filename = "dova-base.h")]
public class string : Dova.Value {
	public string ();
	public int collate (string other);
	public static int compare (string? s1, string? s2);
	public string concat (string other);
	public bool contains (string value);
	public static string create (int length);
	public static string create_from_cstring (byte* cstring);
	public static string create_from_utf8 (byte[] b, int offset = 0, int length = -1);
	public bool ends_with (string value);
	public static bool equals (string? a, string? b);
	public byte get (int index);
	public char get_char (int index);
	public byte[] get_utf8_bytes ();
	public uint hash ();
	public int index_of (string needle, int start_index = 0, int end_index = -1);
	public int index_of_char (char c, int start_index = 0, int end_index = -1);
	public string join (Dova.List<string> list);
	public int last_index_of (string needle, int start_index = 0, int end_index = -1);
	public int last_index_of_char (char c, int start_index = 0, int end_index = -1);
	public bool next_char (ref int index, out char c);
	public static void* ref (void* object);
	public string replace (string old, string replacement);
	public string slice (int start_index, int end_index);
	public Dova.List<string> split (string delimiter);
	public bool starts_with (string value);
	public string to_lower ();
	public string to_string ();
	public string to_upper ();
	public static void unref (void* object);
	public byte* data { get; }
	public int length { get; private set; }
}
[CCode (cheader_filename = "dova-base.h")]
[SimpleType]
[BooleanType]
public struct bool {
	public string to_string ();
}
[CCode (cname = "uint32_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 7)]
public struct char {
	public char to_lower ();
	public string to_string ();
	public char to_upper ();
	public Dova.UnicodeBidiClass bidi_class { get; }
	public Dova.UnicodeCategory category { get; }
	public bool is_alnum { get; }
	public bool is_alpha { get; }
	public bool is_blank { get; }
	public bool is_control { get; }
	public bool is_digit { get; }
	public bool is_lower { get; }
	public bool is_number { get; }
	public bool is_punct { get; }
	public bool is_space { get; }
	public bool is_upper { get; }
	public bool is_xdigit { get; }
	public Dova.UnicodeScript script { get; }
}
[CCode (cname = "decimal128", cheader_filename = "dova-base.h")]
[SimpleType]
[FloatingType (rank = 3)]
public struct decimal {
}
[CCode (cheader_filename = "dova-base.h")]
[SimpleType]
[FloatingType (rank = 2)]
public struct double {
	public double ceil ();
	public double floor ();
	public double round ();
	public string to_string ();
}
[CCode (cheader_filename = "dova-base.h")]
[SimpleType]
[FloatingType (rank = 1)]
public struct float {
	public string to_string ();
}
[CCode (cname = "uint8_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 3)]
public struct byte {
	public string to_string ();
}
[CCode (cname = "int8_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 2)]
public struct int8 {
	public string to_string ();
}
[CCode (cname = "uint8_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 3)]
public struct uint8 {
	public string to_string ();
}
[CCode (cname = "int16_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 4)]
public struct int16 {
	public string to_string ();
}
[CCode (cname = "uint16_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 5)]
public struct uint16 {
	public string to_string ();
}
[CCode (cname = "int32_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 6)]
public struct int32 {
	public bool equals (int32 other);
	public uint hash ();
	public string to_string ();
}
[CCode (cname = "uint32_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 7)]
public struct uint32 {
	public string to_string ();
}
[CCode (cname = "intptr_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 8)]
public struct int {
	public bool equals (int other);
	public uint hash ();
	public string to_string ();
}
[CCode (cname = "uintptr_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 9)]
public struct uint {
	public bool equals (uint other);
	public uint hash ();
	public string to_string ();
}
[CCode (cname = "int64_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 8)]
public struct int64 {
	public string to_string ();
}
[CCode (cname = "uint64_t", cheader_filename = "dova-base.h")]
[SimpleType]
[IntegerType (rank = 9)]
public struct uint64 {
	public string to_string ();
}
