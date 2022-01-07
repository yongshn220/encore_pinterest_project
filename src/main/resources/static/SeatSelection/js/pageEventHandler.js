class PageEventHandler
{
	constructor(controller)
	{
		this.controller = controller;
		this.curSeatHovering = [];
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
		console.log(this.curSeatHovering);
		
		if(event.target.classList.contains('selected'))
		{
			this.controller.data.unselectSeat(event.target.getAttribute("data-count"));
		}
		else
		{
			let seatIdList = [];
			this.curSeatHovering.forEach(e => {
				e.addClass('clicked');
				
				seatIdList.push(e.attr("data-count"))
			});
			this.controller.data.selectSeat(seatIdList);
		}
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
			if(this.isSeatValid(pos.row, pos.col, seatId))
			{
				if(this.isSeatValid(pos.row, pos.col + 1, seatId + 1) )
				{
					let seatA = $(`#seat_id_${seatId}`).addClass('hover');
					let seatB = $(`#seat_id_${seatId + 1}`).addClass('hover');
					this.curSeatHovering = [seatA, seatB];
				}
			}
		}
		else if(amount > 0)
		{
			if(this.isSeatValid(pos.row, pos.col))
			{
				let seatA = $(`#seat_id_${seatId}`).addClass('hover');	
				this.curSeatHovering = [seatA];						
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
	
	isSeatValid(row, col, seatId)
	{
		if($(`#seat_id_${seatId}`).hasClass('clicked'))
		{
			return false;
		}
		if(row < 5 && col < 5)
		{
			let seatList = this.controller.data.room.seatList;
			return seatList[row][col].isEmpty;			
		}
		return false;
	}
}