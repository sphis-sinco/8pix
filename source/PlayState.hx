package;

import flixel.group.FlxGroup.FlxTypedGroup;

class PlayState extends FlxState
{
	public var scripts:FlxTypedGroup<FlxHScript> = new FlxTypedGroup<FlxHScript>();

	override public function create()
	{
		super.create();

		add(scripts);

		#if sys
		var readDirectory = function(dir:String) {}

		readDirectory = function(dir:String)
		{
			trace(dir);
			if (!FileSystem.exists(dir))
				return;
			for (file in FileSystem.readDirectory(dir))
			{
				if (file.endsWith(Assets.HSCRIPT_EXT))
				{
					trace(file);
					scripts.add(new FlxHScript('$dir/$file'));
				}
				else if (!file.contains('.'))
				{
					readDirectory('$dir/$file');
				}
			}
		}
		readDirectory(Assets.getAssetPath('scripts'));
		#end

		for (script in scripts) {}
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
