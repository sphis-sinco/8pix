package assets.scripts;

import flixel.FlxSprite;

function scriptsLoaded() {}

function gameplay_create()
{
	PlayState.sprite1 = new FlxSprite(0, 0).loadGraphic(Assets.getImage('appIcon'));
	PlayState.addObject(PlayState.sprite1);
}

function gameplay_update(elapsed:Float) {}
