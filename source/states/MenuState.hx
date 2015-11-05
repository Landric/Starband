package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.util.FlxDestroyUtil;

import states.*;

using flixel.util.FlxSpriteUtil;

class MenuState extends FlxState {

	private var btnPlay:FlxButton;
	
	override public function create(){
		btnPlay = new FlxButton(0, 0, "Play", clickPlay);
		btnPlay.screenCenter();
		add(btnPlay);
		super.create();
	}

	private function clickPlay():Void{
		FlxG.switchState(new BattleState());
	}

	override public function destroy():Void {
        super.destroy();

        btnPlay = FlxDestroyUtil.destroy(btnPlay);
    }
}