bgameover.addEventListener("mouseDown",gameOver);

function gameOver(event)
{
  for (var n:int = 0; n < b_num; n++){
		if(brick[n]){
				removeChild(brick[n]);
				brick[n] = null;
		}
	}
	if(r != 1){
		removeChild(item_1);
	}
	r = 0;
	isItem = 0;
	
	gotoAndPlay("start");
}
