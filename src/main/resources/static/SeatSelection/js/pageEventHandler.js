class PageEventHandler
{
	constructor(controller)
	{
		this.controller = controller;
		this.curSeatHovering = [];
	}
	
	init()
	{
		this.data = this.controller.data;
		this.room = this.data.room;
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
		let id = event.target.getAttribute("data-count");
		let pos = numToRowCol(parseInt(id));
		let seatState = this.room.seatList[pos.row][pos.col].state;
		if(seatState == SEATSTATE.clicked)
		{
			this.room.unclicked(pos.row, pos.col);
		}
		else if(seatState == SEATSTATE.hovered)
		{
			this.room.clicked();	
		}
	}
	
	
	
	seatPositionSelectHovered = (event, element) => {
	
		// number of people 
		let amount = this.data.getAmount();
		let curAmount = this.data.curAmount;
		
		let finAmount = amount - curAmount;
		
		// id of hovering element
		let seatId = Math.floor(event.target.getAttribute("data-count"));
		// pos.row & pos.col of hovering element;
		let pos = numToRowCol(seatId);
		
		if(finAmount > 1)
		{
			if(this.room.isSeatValid(pos.row, pos.col))
			{
				if(this.room.isSeatValid(pos.row, pos.col + 1) )
				{
					this.room.chageSeatState(pos.row, pos.col, SEATSTATE.hovered);
					this.room.chageSeatState(pos.row, pos.col+1, SEATSTATE.hovered);
				}
			}
		}
		else if(finAmount > 0)
		{
			if(this.room.isSeatValid(pos.row, pos.col))
			{
				this.room.chageSeatState(pos.row, pos.col, SEATSTATE.hovered);					
			}
		}
		else
		{
			
		}
		this.room.drawRoom();
	}
	
	seatPositionSelectMouseleave = () => {
		this.room.removeHovered();
	}
}