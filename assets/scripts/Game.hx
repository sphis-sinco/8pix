package assets.scripts;

import flixel.FlxG;
import flixel.FlxSprite;

function scriptsLoaded() {}

function gameplay_create()
{
	PlayState.sprite1 = new FlxSprite(0, 0).loadGraphic(Assets.getImage('appIcon'));
	PlayState.addObject(PlayState.sprite1);
}

function gameplay_update(elapsed:Float)
{
	if (FlxG.keys.pressed.LEFT)
		PlayState.sprite1.x -= 5;
	else if (FlxG.keys.pressed.RIGHT)
		PlayState.sprite1.x += 5;
	if (FlxG.keys.pressed.UP)
		PlayState.sprite1.y -= 5;
	else if (FlxG.keys.pressed.DOWN)
		PlayState.sprite1.y += 5;
}
