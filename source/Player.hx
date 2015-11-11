package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxAngle;
import flixel.util.FlxColor;
import flixel.util.FlxPoint;

import Config.Keys;

class Player extends FlxSprite{
	
	private var speed:Float = 10;    

	public function new(X:Float=0, Y:Float=0){
		super(X, Y);
		drag.x = drag.y = 100;
		maxVelocity = new FlxPoint(300);
		makeGraphic(16, 16, FlxColor.BLUE);
	}

	private function movement():Void{
		var up = FlxG.keys.anyPressed(Keys.UP);
		var down = FlxG.keys.anyPressed(Keys.DOWN);
		var left = FlxG.keys.anyPressed(Keys.LEFT);
		var right = FlxG.keys.anyPressed(Keys.RIGHT);

		if (up && down){
		    up = down = false;
		}
		if (left && right){
    		left = right = false;
    	}
    	if (up || down || left || right){
    		var mA:Float = 0;
			if (up){
				mA = -90;
				if (left)
					mA -= 45;
				else if (right)
					mA += 45;
			}
			else if (down){
				mA = 90;
				if (left)
					mA += 45;
				else if (right)
					mA -= 45;
			}
			else if (left)
				mA = 180;
			else if (right)
				mA = 0;

			
			if (velocity != maxVelocity)
				acceleration.addPoint(FlxAngle.rotatePoint(speed, 0, 0, 0, mA));
 		}
	}

	override public function update():Void
	{
		movement();
		super.update();
	}

}