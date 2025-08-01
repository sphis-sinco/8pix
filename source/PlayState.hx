package;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

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
					add(new FlxHScript('$dir/$file'));
				}
				else if (!file.contains('.'))
				{
					readDirectory('$dir/$file');
				}
			}
		}
		readDirectory(Assets.getAssetPath('scripts/'));
		#end
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
