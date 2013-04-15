bclear.addEventListener("mouseDown",gameClear);

function gameClear(event)
{
  if(r != 1){
		removeChild(item_1);
		item_1 = null;
	}
	r = 0;	
	isItem = 0;
	
	gotoAndPlay("start");
}
