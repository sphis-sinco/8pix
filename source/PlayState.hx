package;

import flixel.input.keyboard.FlxKey;
import flixel.system.FlxModding;

class PlayState extends FlxState
{
	public static var sprite1:FlxSprite;
	public static var sprite2:FlxSprite;
	public static var sprite3:FlxSprite;
	public static var sprite4:FlxSprite;

	public static var text1:FlxText;
	public static var text2:FlxText;
	public static var text3:FlxText;
	public static var text4:FlxText;

	public static var addObject = function(object:FlxBasic) {}

	public static var MODMENU_KEY:FlxKey = ESCAPE;
	public static var HOTRELOAD_KEY:FlxKey = R;

	override public function create()
	{
		super.create();

		@:privateAccess {
			ScriptsManager.loadScripts();
		}

		addObject = function(object:FlxBasic) add(object);

		ScriptsManager.callScript('gameplay_create');
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.anyJustReleased([MODMENU_KEY]))
		{
			FlxG.switchState(() -> new PlayState());
		}

		if (FlxG.keys.anyJustReleased([HOTRELOAD_KEY]))
		{
			FlxModding.reload(true);
			FlxG.resetState();
		}

		ScriptsManager.callScript('gameplay_update', [elapsed]);
	}
}
