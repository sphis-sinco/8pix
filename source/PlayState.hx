package;

import flixel.input.keyboard.FlxKey;

class PlayState extends FlxState
{
	public static var addObject = function(object:FlxBasic) {}

	override public function create()
	{
		super.create();

		addObject = function(object:FlxBasic) add(object);

		ScriptsManager.callScript('gameplay_create');
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		ScriptsManager.callScript('gameplay_update', [elapsed]);
	}
}
