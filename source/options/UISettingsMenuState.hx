package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
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

using StringTools;

class UISettingsMenuState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'WIP OPTIONS - UI Settings menu';
		rpcTitle = 'WIP OPTIONS - UI Settings menu'; //for Discord Rich Presence

		var option:Option = new Option('Vs Stupid UI', 
			'If checked, this will show the vs stupid UI \n( This may crash if selected )',
			'stupidHUD',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Base game UI',
			'If checked, every UI sprite will be changed to the base games UI \n( Work in progress! )',
			'downScroll',
			'bool',
			false);
		addOption(option);

		super();
	}

}

// Vs Stupid UI - changed timebar, score text, and camera follow
// Base game UI - deleted timebar, and smaller and simplier score text