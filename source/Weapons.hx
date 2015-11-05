package;

import flixel.FlxG;
import flixel.util.FlxRandom;

 class Weapon {

    public var weight:Int;
    public var damage:Int;
    public var range:Int;
}

class Beam extends Weapon {

}

class Missile extends Weapon {

	public var salvo:Int;

}

class Kinetic extends Weapon {

}