package assets.scripts;

import flixel.FlxSprite;

function scriptsLoaded() {}

function gameplay_create()
{
	PlayState.sprite1 = new FlxSprite(0, 0).loadGraphic(Assets.getImage('appIcon'));
}

function gameplay_update(elapsed:Float) {}
