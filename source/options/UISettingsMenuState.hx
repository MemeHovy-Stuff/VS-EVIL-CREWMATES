package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;
import openfl.Lib;

using StringTools;

class GraphicsSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'UI Settings';
		rpcTitle = 'UI Settings Menu ( WIP )'; //for Discord Rich Presence


		var option:Option = new Option('Vs Stupid UI',
			'If checked, this adds-in the vs stupid UI', // change in timebar, score text and more
			'stupidUI',
			'bool', 
			false); 
		addOption(option);

		var option:Option = new Option('Base game UI',
		'Adds-in a TERRIBLE UI', // bland as fuck, simplier score text, no rates, no misses, no timebar, ITS NOTHING
		'fnfUI',
		'bool', 
		false); 
	addOption(option);
	
		super();
	}

}
