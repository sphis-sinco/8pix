package;

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

	override public function create()
	{
		super.create();

		@:privateAccess {
			ScriptsManager.loadScripts();
		}

		add(sprite1);
		add(sprite2);
		add(sprite3);
		add(sprite4);

		add(text1);
		add(text2);
		add(text3);
		add(text4);

		ScriptsManager.callScript('gameplay_create');
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		ScriptsManager.callScript('gameplay_update', [elapsed]);
	}
}
