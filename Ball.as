var vx:Number;
var vy:Number;
var dx:int = 1;
var dy:int = 1;
var ay:Number = 0.002;

function init()
{
    this.x = Math.random() * stage.stageWidth;
    this.y = 200;
    if (Math.random() < 0.5) {
        dx *= -1;
    }
    vx = 3.0;
    vy = 3.0
}

function move()
{
    this.x += dx * vx;
    this.y += dy * vy;
  vy = vy + ay;

    if (this.x > stage.stageWidth- this. width / 2) {
        this.x = stage.stageWidth - this.width / 2;
        dx = -1;
    }
	if(this.x < this. width/ 2){
		this.x = this.width / 2;
		dx = 1;
	}
	if(this.y <this.height/ 2){
		this.y = this.height / 2;
		dy = 1;		
	}
}

function vbound()
{
    dy *= -1;
}

function hbound()
{
    dx *= -1;
}

function isMiss():Boolean
{
	return this.y > stage.stageHeight;
}
