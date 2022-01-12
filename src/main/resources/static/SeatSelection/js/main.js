
let controller = new MainController();

$(document).ready(function(){
	controller.init();
	
	updateData();
	initEvents();
})


function numToRowCol(num)
{
	num = Math.floor(parseInt(num));
	if(num < 0) return null;
	let row = Math.floor(num / 5) 
	let col = num % 5;
	return {"row": row, "col": col};
}


const SEATSTATE = 
{
	empty: 0,
	reserved: 1,
	clicked: 2,
	hovered: 3,
}

function initEvents()
{
	previousButtonClickEvent();
}

function previousButtonClickEvent() 
{
	let elmt_previousButton = document.querySelector(`#result_area #previous_btn`);
	elmt_previousButton.addEventListener("click", () => {
		const url = `/Reservation/DateSelection/main/${attr_TIME.movieDetail.movie.id}`;
		window.location.href = url;
	});
}

function progressButtonClickEvent()
{
	let elmt_progressButton = document.querySelector('#result_area #progress_btn');
	let anum = this.controller.data.amountAdult;
	let cnum = this.controller.data.amountChild;
	elmt_progressButton.addEventListener("click", () => {
		const url = `/Reservation/DateSelection/main/?id=${attr_TIME.movieDetail.movie.id}&anum=${anum}&cnum=${cnum}`;
		window.location.href = url;
	});
}

function updateData()
{
	console.log(attr_TIME);
	console.log(attr_SEATLIST);	
	
	controller.updateRoom();
}


