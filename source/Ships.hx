package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxRandom;

 class Ship extends FlxSprite{

    public var size:Int;
    public var health:Int;
    public var max_speed:Int;
    public var jump:Int;
    public var hardpoints:Array<Hardpoint>;

    public function new(designation:String, cat:String, size:Int, health:Int, max_speed:Int, jump:Int, hardpoints:Array<Hardpoint>){
    	this.size = size;
    	this.health = health;
    	this.max_speed = max_speed;
    	this.jump = jump;
    	this.hardpoints = hardpoints;
    }
}

class Capital extends Ship {

    public function new(designation:String, cat:String){
        super()
    }

    public function new(){
        this();
    }

}

class Cruiser extends Ship {

}

class Frigate extends Ship {

}

class Fighter extends Ship {

}