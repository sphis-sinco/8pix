package assets.scripts;

import flixel.FlxG;
import flixel.FlxSprite;

function scriptsLoaded() {}
var sprite1:FlxSprite;

function gameplay_create()
{
	if (sprite1 == null)
		sprite1 = new FlxSprite(0, 0).loadGraphic(Assets.getImage('appIcon'));
	PlayState.addObject(sprite1);
}

function gameplay_update(elapsed:Float)
{
	if (FlxG.keys.pressed.LEFT)
		sprite1.x -= 5;
	else if (FlxG.keys.pressed.RIGHT)
		sprite1.x += 5;
	if (FlxG.keys.pressed.UP)
		sprite1.y -= 5;
	else if (FlxG.keys.pressed.DOWN)
		sprite1.y += 5;
}
