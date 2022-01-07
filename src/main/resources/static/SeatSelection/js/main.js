
let controller = new MainController();

$(document).ready(function(){
	controller.init();
})


function numToRowCol(num)
{
	num = Math.floor(parseInt(num));
	if(num < 0) return null;
	let row = Math.floor(num / 5) 
	let col = num % 5;
	return {"row": row, "col": col};
}

