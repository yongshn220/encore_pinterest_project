class PageEventHandler
{
	constructor(controller)
	{
		this.controller = controller;
	}
	
	adultAmountSelectClicked = (event) => {

		let elmt_adultAmountList = document.querySelectorAll("#type_adult_area ul .type_adult_block");

		elmt_adultAmountList.forEach(e => e.classList.remove("selected"));
		event.target.classList.add("selected");
		
		console.log($(this));
	}
	
	childAmountSelectClicked = () => {
		
	}
	
	seatPositionSelectClicked = () => {
		console.log("seat position selected clicked");
	}
}