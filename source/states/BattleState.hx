package states;

import flixel.FlxState;
import flixel.util.FlxDestroyUtil;

class BattleState extends FlxState {

	private var player:Player;
    
    override public function create(){
        player = new Player(20, 20);
        add(player);
    }

    override public function destroy():Void {
        super.destroy();

        player = FlxDestroyUtil.destroy(player);
    }
}