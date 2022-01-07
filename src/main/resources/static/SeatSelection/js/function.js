
class MainController
{
	constructor()
	{
		this.data = new Data(this);
        this.generator = new Generator(this);
        this.pageEventHandler = new PageEventHandler(this);
	}
	
	init()
	{
		this.data.init();
		this.generator.init();
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
		this.room = new Room();
		this.maxAmount = 4;
		this.curAmount = 0;
		this.selectedSeatList = [];
		this.amountAdult = 0;
		this.amountChild = 0;
		this.adultPrice = 10000;
		this.childPrice = 8000;
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
	
	selectSeat(seatIdList)
	{
		let seatList = [];
		seatIdList.forEach(id => {
			let pos = numToRowCol(parseInt(id));
			seatList.push(this.room.seatList[pos.row][pos.col]);
		})
		this.selectedSeatList.push(seatList);
	}
	
	unselectSeat(id)
	{
		let pos = numToRowCol(parseInt(id));
		let seat = this.room.seatList[pos.row][pos.col];
		this.selectedSeatList.forEach(seatList => {
			if(seatList.includes(seat)){
				
			}
		})
	}
}

class Room
{
	constructor()
	{
		this.seatList = new Array(5);
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
		
	}
	
	drawRoom()
	{
		elmt_seat_list = ducument.querySelectAll('#seat_selection_box .seatList');
		//test develop;
	}
}

class Seat
{
	constructor(id, row, col)
	{
		this.id = id;
		this.row = row;
		this.col = col;
		this.isEmpty = true;
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
        		let left = col * 60;
        		let top = row * 60;
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



