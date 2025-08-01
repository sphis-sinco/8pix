package;

import flixel.input.keyboard.FlxKey;

class PlayState extends FlxState
{
	public static var addObject = function(object:FlxBasic) {}

	public static var MODMENU_KEY:FlxKey = ESCAPE;
	public static var HOTRELOAD_KEY:FlxKey = R;

	override public function create()
	{
		super.create();

		addObject = function(object:FlxBasic) add(object);

		ScriptsManager.callScript('gameplay_create');
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.anyJustReleased([MODMENU_KEY]))
		{
			FlxG.switchState(() -> new ModMenu());
		}

		if (FlxG.keys.anyJustReleased([HOTRELOAD_KEY]))
		{
			FlxModding.reload(true);
			FlxG.resetState();
		}

		ScriptsManager.callScript('gameplay_update', [elapsed]);
	}
}
