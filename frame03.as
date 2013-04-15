ball.init();

var s:int = 0;
var life:int = 3;
var q:int = 3;

var b_x:int = 7;
var b_y:int =4;
var b_num:int = b_x * b_y;
var brick:Array = new Array();

var l:int = 0;

var item_1;
item_1 = new Item_1();
var b:int;
b = Math.random() *7;
item_1.x = 44 + b *52;
item_1.y = 160 - 2 * 22;
addChild(item_1);

for(var m:int = 0; m < b_y; m ++){
for(var i:int = 0; i < b_x; i++) {
brick[l] = new Brick();
brick[l].x = 44 + i * 52;
brick[l].y = 160- m* 22;
addChild(brick[l]);
l ++;
}
}

