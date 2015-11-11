package states;

import flixel.FlxG;
import flixel.FlxCamera;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxDestroyUtil;
import flixel.addons.display.FlxBackdrop;

class BattleState extends FlxState {

	private var player:Player;
    private var backdrop:FlxBackdrop;

    override public function create(){
        

        
        
        add(backdrop = new FlxBackdrop("assets/images/backdrop.png"));
        //backdrop.velocity.set(100, 100);

        player = new Player(20, 20);
        add(player);
        FlxG.camera.follow(player, FlxCamera.STYLE_TOPDOWN, 1);
        super.create();
    }

    override public function destroy():Void {
        super.destroy();

        player = FlxDestroyUtil.destroy(player);
    }
}