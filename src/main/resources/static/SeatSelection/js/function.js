
class MainController
{
	constructor()
	{
		this.data = new Data(this);
        this.generator = new Generator(this);
        this.pageEventHandler = new PageEventHandler(this);
        this.receipt = new Receipt(this);
	}
	
	init()
	{
		this.data.init();
		this.generator.init();
		this.pageEventHandler.init();
		this.receipt.drawAll();
	}
	
	updateRoom()
	{
		this.data.room.updateRoom();
	}
	
	//amount select events
	addEventAdultAmountSelectClicked(element)
	{
		element.click((event) => this.pageEventHandler.adultAmountSelectClicked(event, element));
	}
	
	addEventChildAmountSelectClicked(element)
	{
		element.click((event) => this.pageEventHandler.childAmountSelectClicked(event, element));
	}
	
	//seat select events
	addEventSeatPositionSelectClicked(element)
	{
		element.click((event) => this.pageEventHandler.seatPositionSelectClicked(event, element));
	}
	
	addEventSeatPositionSelectHovered(element)
	{
		element.hover((event) => this.pageEventHandler.seatPositionSelectHovered(event, element));
	}
	addEventSeatPositionSelectMouseleave(element)
	{
		element.mouseleave((event) => this.pageEventHandler.seatPositionSelectMouseleave(event, element));
	}
	
	//multiple events connector;
	addAllEventsSeatPositionSelect(element)
	{
		this.addEventSeatPositionSelectClicked(element);
		this.addEventSeatPositionSelectHovered(element);
		this.addEventSeatPositionSelectMouseleave(element);
	}
}

class Data
{
	constructor(controller)
	{
		this.controller = controller;
		this.room = new Room(controller);
		this.maxAmount = 8;
		this.curAmount = 0;
		this.amountAdult = 0;
		this.amountChild = 0;
		this.amountSeatAvailable = 25;
		this.adultPrice = 15000;
		this.childPrice = 11000;
	}
	
	init()
	{
		this.room.createNewRoom();
	}
	
	isAmountFull()
	{
		let a = (this.maxAmount < this.amountAdult + this.amountChild)
		return a;
	}
	
	getAmount()
	{
		return this.amountAdult + this.amountChild;
	}
}

class Receipt
{
	constructor(controller)
	{
		this.controller = controller;
		this.elmt_movieTitle = document.querySelector('#res_area1 #res_title');
		this.elmt_infoDate = document.querySelector('#info_area #date_text');
		this.elmt_infoSeatAvailable = document.querySelector('#seat_available #seat_available_text');
		this.elmt_area2Date = document.querySelector('#res_area2 #res_value #res_date')
		this.elmt_area2Amount = document.querySelector('#res_area2 #res_value #res_amount');
		this.elmt_area3SeatId = document.querySelector('#res_area3 #res_seatId');
		this.elmt_area4AdultPrice = document.querySelector('#res_area4 #res_adultPrice');
		this.elmt_area4ChildPrice = document.querySelector('#res_area4 #res_childPrice');
		this.elmt_area4TotalPrice = document.querySelector('#res_area4 #res_totalPrice');
	}
	
	drawAll()
	{
		this.drawTitle();
		this.drawInfoDate();
		this.drawReceiptDate();
		this.drawAmount();
		this.drawSeatId();
		this.drawPrice();
		
	}
	
	drawTitle()
	{
		this.elmt_movieTitle.innerHTML = attr_TIME.movieDetail.movie.title;
	}
	
	drawInfoDate()
	{
		let data = this.controller.data; 
		this.elmt_infoDate.innerHTML = this.getStrOfDate(data);
	}
	
	drawReceiptDate()
	{
		let data = this.controller.data;
		this.elmt_area2Date.innerHTML = this.getStrOfDate(data);
	}
	
	drawAmount()
	{
		let data = this.controller.data;
		this.elmt_area2Amount.innerHTML  = this.getStrOfAmount(data);
	}
	
	drawSeatId()
	{
		let data = this.controller.data;
		this.elmt_area3SeatId.innerHTML = this.getStrOfSeatId(data);
	}
	
	drawPrice()
	{
		let data = this.controller.data;
		this.elmt_area4AdultPrice.innerHTML = this.getStrOfAdultPrice(data);
		this.elmt_area4ChildPrice.innerHTML = this.getStrOfChildPrice(data);
		this.elmt_area4TotalPrice.innerHTML = this.getStrOfTotalPrice(data);
	}
	
	drawSeatAvailable()
	{
		let data = this.controller.data;
		this.elmt_infoSeatAvailable.innerHTML = this.getStrOfSeatAvailable(data);
	}
	

	getStrOfDate(data)
	{
		let date = attr_TIME.movieDetail.date;
		let time = attr_TIME.timeRoom;
		
		return `[${date}] [${time}]`;
	}
	
	getStrOfAmount(data)
	{
		if(data.amountAdult > 0)
		{
			if(data.amountChild > 0)
			{
				return `일반 ${data.amountAdult}명, 청소년 ${data.amountChild}명`;						
			}
			return `일반 ${data.amountAdult}명`;	
		}
		else
		{
			if(data.amountChild > 0)
			{
				return `청소년 ${data.amountChild}명`;	
			}
			return "없음";
		}
	}
	
	getStrOfSeatId(data)
	{
		let str = "";
		let seatGroupList = data.room.clickedSeatList;
		
		seatGroupList.forEach(seatGroup => {
			seatGroup.forEach(seat =>{
				str += seat.getSeatCode() + " ";
			})
		})
		return str;
	}
	
	getStrOfAdultPrice(data)
	{
		return `${data.adultPrice.toLocaleString('ko-KR')}원 X ${data.amountAdult.toLocaleString('ko-KR')}`;
	}
	
	getStrOfChildPrice(data)
	{
		return `${data.childPrice.toLocaleString('ko-KR')}원 X ${data.amountChild.toLocaleString('ko-KR')}`;
	}
	
	getStrOfTotalPrice(data)
	{
		let price = (data.adultPrice * data.amountAdult) + (data.childPrice * data.amountChild);
		return price.toLocaleString('ko-KR');
	}
	
	getStrOfSeatAvailable(data)
	{
		return `남은좌석 ${data.amountSeatAvailable} / 25`;
	}
}

class Room
{
	constructor(controller)
	{
		this.controller = controller;
		this.seatList = new Array(5);
		this.clickedSeatList = [];
	}
	
	createNewRoom()
	{
		for(let row = 0; row < 5; row++)
		{
			this.seatList[row] = new Array(5);
			for(let col = 0; col < 5; col++)
			{
				let seatId = row*5 + col;
				let newSeat = new Seat(seatId, row, col);
				this.seatList[row][col] = newSeat;
			}	
		}
		console.log(this.seatList);
	}
	
	updateRoom()
	{
		attr_SEATLIST.forEach(seat => {
			if(!seat.seat_info)
			{
				this.seatList[seat.row2][seat.col2].state = SEATSTATE.empty;			
			}
			else
			{
				this.seatList[seat.row2][seat.col2].state = SEATSTATE.reserved;
			}
		})
	}
	
	drawRoom()
	{
		let clicked = 0;
		this.seatList.forEach(row => {
			row.forEach(seat => {
				let elmt_seat = $(`#seat_selection_box #seat_id_${seat.id}`);
				elmt_seat.removeClass('hover');
				elmt_seat.removeClass('clicked');
				switch(seat.state)
				{
					case SEATSTATE.reserved: elmt_seat.addClass('reserved');
					break;
					case SEATSTATE.clicked: elmt_seat.addClass('clicked'); clicked++;
					break;
					case SEATSTATE.hovered: elmt_seat.addClass('hover');
					break;
					default: null;
					break;
				}				
			})
		});
		this.controller.data.curAmount = clicked;
	}
	
	removeHovered()
	{
		this.seatList.forEach(row => {
			row.forEach(seat => {
				if(seat.state == SEATSTATE.hovered)
				{
					seat.state = SEATSTATE.empty;
				}				
			})
		});
		this.drawRoom();
	}
	
	chageSeatState(row, col, state)
	{
		this.seatList[row][col].state = state;
	}
	
	clicked()
	{
		let clickedSeat = [];
		this.seatList.forEach(row => {
			row.forEach(seat => {
				if(seat.state == SEATSTATE.hovered)
				{
					seat.state = SEATSTATE.clicked;
					clickedSeat.push(seat);
				}				
			})
		});
		this.clickedSeatList.push(clickedSeat);
		
		this.drawRoom();
	}
	
	unclicked(row, col)
	{
		this.clickedSeatList = this.clickedSeatList.filter(clickedSeat => {
			if(clickedSeat.includes(this.seatList[row][col]))
			{
				clickedSeat.forEach(seat => {
					this.seatList[seat.row][seat.col].state = SEATSTATE.empty;
				});
				return false;
			}
			return true;
		});
		console.log(this.clickedSeatList);
		this.drawRoom();
	}
	
	isSeatValid(row, col)
	{
		if(this.isPosValid(row, col))
		{
			return this.seatList[row][col].state == SEATSTATE.empty			
		}
		return false;
	}
	
	isPosValid(row, col)
	{
		if(row >= 0 && row < 5 && col >= 0 && col < 5)
		{
			return true;
		}
		return false;
	}	
}

class Seat
{
	constructor(id, row, col)
	{
		this.id = id;
		this.row = row;
		this.col = col;
		this.state = SEATSTATE.empty;
	}
	
	getSeatCode()
	{
		let rowCode = ['A', 'B', 'C', 'D', 'E'];
		return rowCode[this.row] + (this.col + 1); 
	}
}

class Generator
{
	constructor(controller)
	{
		this.controller = controller;
	}
	
	init()
	{
		this.generateAmountSelectTable();
		this.generateRoomTable();
	}
	
	generateAmountSelectTable()
	{
		this.elmt_adult_ul = $("#type_adult_area ul")[0];
		this.elmt_child_ul = $("#type_child_area ul")[0];
		
		for(let i = 0; i < 7; i++)
		{
			this.elmt_adult_ul.innerHTML += 
			`<li id="a_li_id_${i}" class="type_adult_block" data-count="${i}">
				<div>
					${i}
				</div>
			</li>`;
			this.elmt_child_ul.innerHTML += 
			`<li id="c_li_id_${i}" class="type_child_block" data-count="${i}">
				<div>
					${i}
				</div>
			</li>`;
			if(i == 0)
			{
				this.elmt_adult_ul.children[0].classList.add("selected");
				this.elmt_child_ul.children[0].classList.add("selected");
			}
			
		}
		this.controller.addEventAdultAmountSelectClicked($("#type_adult_area ul .type_adult_block"));
		this.controller.addEventChildAmountSelectClicked($("#type_child_area ul .type_child_block"));

	}

	generateRoomTable()
	{
        let room = this.controller.data.room;
        let seatList = room.seatList;
        let elmt_selectionBox = document.getElementById("seat_selection_box");
        console.log(seatList[0].length);
        for(let row = 0; row < seatList.length; row++)
        {
        	for(let col = 0; col < seatList[0].length; col++)
        	{
        		let seat_id = seatList[row][col].id;
        		let left = col * 55;
        		let top = row * 55;
        		elmt_selectionBox.innerHTML += 
        		`
        		<div id="seat_id_${seat_id}" class="seatList" data-count="${seat_id}">
        		    <div id="text" style="pointer-events: none;">
        		        ${col + 1}
					</div>
				</div>
				`;

				$(`#seat_id_${seat_id}`).css("left", left).css("top",top);
				
        	}	
        }
        
        let elmt_seatList = $('#seat_selection_box .seatList');
        this.controller.addAllEventsSeatPositionSelect(elmt_seatList);
	}
}



