package;

import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		FlxModding.init();

		@:privateAccess {
			ScriptsManager.loadScripts();
		}

		super();
		addChild(new FlxGame(0, 0, ModMenu));
	}
}
