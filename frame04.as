ball.move();
racket.move(mouseX);


if (ball.isMiss()){
  	life --;
		ball.init();
		q --;
}

if(life == 0){
			gotoAndPlay("gameover");
		}

var isClear:Boolean = true;
for(var p:int =0; p < b_num; p++){
	if(brick[p]){
		isClear =false;
	}
}

if(isClear){
	gotoAndPlay("clear");
}


if(ball.hitTestObject(racket)) {
	ball.vbound();
}

var hit:Boolean = false;

for (var n:int = 0; n < b_num; n++) {
if (brick[n] && ball.hitTestObject(brick[n])) {
	removeChild(brick[n]);
	hit = true;
	brick[n] = null;
	s += 100;
	//trace("s = " + s);
}
}

var isItem:int;
if(ball.hitTestObject(item_1)){/*アイテムへのあたり判定*/
	isItem = 1;
}
if(isItem == 1){ /*アイテムが下に落ち始める*/
	var i_ay:Number = 1.5;
	item_1.y = item_1.y + i_ay;
}
var r:int;
if(r != 1){
	if(item_1.hitTestObject(racket)){
	removeChild(item_1);
	s += 1000; /*1000点追加*/
	r = 1;
	}
}

if(hit) {
	ball.vbound();
}

var b_ay:Number = 0.25;
if(r == 1){
	for(m = 0; m < b_num; m ++){
		if(brick[m]){
			if(brick[m].y > 500){
				life = 0;
			}
			brick[m].y = brick[m].y + b_ay;
		}
	}
}



score.text = s.toString();
life_c.text = q.toString();
Sokudo.text = ball.vy.toString();
