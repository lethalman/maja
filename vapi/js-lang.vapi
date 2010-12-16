[Javascript (camelcase = true)]
namespace Javascript {
	/* Global javascript variables */
	public void* undefined;
	public any[] arguments;
	public DOM.Document document;
	public Navigator navigator;
	public dynamic Window window;
	public Location location;
	public Console console;

	public int parse_int (string str);

	public class Console {
		public void log (...);
	}

	[Javascript (name = "encodeURIComponent")]
	public string encode_uri_component (string component);

	public class Object {
		public Object ();
		[Javascript (contains = true)]
		public bool contains (any key);
		public new bool equals (any? other);
		[Javascript (equals = true)]
		public bool js_equals (any? other);
		[Javascript (static = "Maja.copy_object")]
		public T js_copy<T> ();
		[Javascript (getter = true)]
		public T get<T> (string key);
		[Javascript (setter = true)]
		public void set<T> (string key, T value);
		[Javascript (delete = true)]
		public void delete (string key);
		[Javascript (static = "Maja.get_keys")]
		public Javascript.Array<T> js_keys<T> ();
		[Javascript (static = "Maja.get_values")]
		public Javascript.Array<T> js_values<T> ();
	}

	public delegate int CompareFunc<T> (T a, T b);

	public class Array<T> : Object {
		public class Iterator<T> {
			public bool next ();
			public T get ();
		}

		public Array (...);

		public int index_of (T element);
		public T shift ();
		public Array<T> concat (Array<T> array);
		public void push<T> (T element);
		[Javascript (contains = true)]
		public new bool contains (T element);
		[Javascript (getter = true)]
		public T get (int index);
		[Javascript (setter = true)]
		public void set (int index, T element);
		[Javascript (simple_field = true)]
		public int length { get; }
		public string join (string delimiter);
		[Javascript (no_default = true)]
		public Javascript.Array<T> slice (int start, int? end = null);
		public void sort (CompareFunc<T> compare_func);
		[Javascript (static = "Maja.array_iterator")]
		public Iterator<T> iterator ();
	}

	public class String {
		[Javascript (no_default = true)]
		public string substring (int from, int? to = null);
		public string replace (string text, string replacement);
		[Javascript (name = "replace")]
		public string replace_regexp (RegExp regexp, string replacement);
		[Javascript (name = "replace")]
		public string replace_regexp_func (RegExp regexp, RegexpCallback matchfunc);
	}

	public class Event {
	}

	public delegate void Callback ();
	public delegate bool EventCallback (Event? event);
	public delegate string RegexpCallback (...);

	public void alert (any object);

	public class RegExp {
		[Javascript (no_default = true)]
		public RegExp (string pattern, string? modifiers = null);
		public bool test (string str);
		public string[] exec (string str);
	}

	public class Navigator {
		public string userAgent;
	}

	public class Window {
		[Javascript (simple_field = true)]
		public Location location { get; set; }
		[Javascript (simple_field = true)]
		public EventCallback onload { get; set; }
		public int set_timeout (Callback callback, int interval);
		public void open (string url, string mode);
	}

	public class Location {
		[Javascript (simple_field = true)]
		public string href { get; set; }
	}

	namespace DOM {
		public class Document {
			[Javascript (simple_field = true)]
			public string title { get; set; }

			public Element create_element (string name);
			public Node create_text_node (string text);
			public Dova.List<Element> get_elements_by_tag_name (string name);
			public Element get_element_by_id (string id);
		}

		public class Node : Object {
			public void append_child (Node node);
		}

		public class Element : Node {
			[Javascript (simple_field = true)]
			public dynamic Javascript.Object style { get; }
			public void set_attribute (string name, any value);
		}
	}
}
