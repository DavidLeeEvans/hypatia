import defold.Window.WindowSize;

@:build(defold.support.MessageBuilder.build())
class GlobalMessage {}

class Globals {
	public static var soundIsOn:Bool = true;
	public static var musicIsOn:Bool = true;
	//
	public static var window_size:WindowSize;
	//
	public static final collectionProxyUrl:Array<String> = [
		'#proxy_main',
		'#proxy_home',
		'#proxy_search',
		'#proxy_crud',
		'#proxy_report',
		'#proxy_planner',
		'#proxy_settings',
		'#proxy_info',
		'#proxy_selector'
	];

	static var select:Int;
	static var prev_select:Int;

	public static function get_select():Int {
		return select;
	}

	public static function get_prev_select():Int {
		return prev_select;
	}

	public static function set_select(s:Int):Void {
		select = s;
	}

	public static function set_prev_select(s:Int):Void {
		prev_select = s;
	}
}
