class PageEventHandler
{
	constructor(controller)
	{
		this.controller = controller;
	}
	
	adultAmountSelectClicked = (event, element) => {
		
		let tmpAmount = this.controller.data.amountAdult;
		this.controller.data.amountAdult = parseInt(event.target.getAttribute("data-count"));
		if(this.controller.data.isAmountFull())
		{
			this.controller.data.amountAdult = tmpAmount;
			alert("최대 4명만 선택 가능합니다.");
		}
		else
		{
			element.removeClass("selected");
			event.target.classList.add("selected");			
		}
		
	}
	
	childAmountSelectClicked = (event, element) => {
		
		let tmpAmount = this.controller.data.amountChild;
		this.controller.data.amountChild = parseInt(event.target.getAttribute("data-count"));
		if(this.controller.data.isAmountFull())
		{
			this.controller.data.amountChild = tmpAmount;
			alert("최대 4명만 선택 가능합니다.");
		}
		else
		{
			element.removeClass("selected");
			event.target.classList.add("selected");		
		}
	}
	
	seatPositionSelectClicked = (event, element) => {
		let eleArray = element.toArray();
		eleArray.forEach(e => {
			if(e.classList.contains('hover'))
			{
				e.classList.add('clicked');	
			}
		});
	}
	
	seatPositionSelectHovered = (event, element) => {
		this.seatRemoveHover(element);
		// number of people 
		let amount = this.controller.data.getAmount();
		// 2D array of seats
		let seatList = this.controller.data.room.seatList;
		// id of hovering element
		let seatId = Math.floor(event.target.getAttribute("data-count"));
		// pos.row & pos.col of hovering element;
		let pos = numToRowCol(seatId);
		
		if(amount > 1)
		{
			if(this.isSeatValid(pos.row, pos.col))
			{
				if(this.isSeatValid(pos.row, pos.col + 1))
				{
					$(`#seat_id_${seatId}`).addClass('hover');
					$(`#seat_id_${seatId + 1}`).addClass('hover');
				}
			}
		}
		else if(amount > 0)
		{
			if(this.isSeatValid(pos.row, pos.col))
			{
				event.target.classList.add('hover');							
			}
		}
		else
		{
			
		}
	}
	
	seatRemoveHover(element)
	{
		let eleArray = element.toArray();
		eleArray.forEach(e => {
			if(!e.classList.contains('clicked'))
			{
				e.classList.remove('hover');
			}
		})
	}
	
	seatPositionSelectMouseleave = (event, element) => {
		this.seatRemoveHover(element);
	}
	
	isSeatValid(row, col)
	{
		if(row < 5 && col < 5)
		{
			let seatList = this.controller.data.room.seatList;
			return seatList[row][col].isEmpty;			
		}
		return false;
	}
}