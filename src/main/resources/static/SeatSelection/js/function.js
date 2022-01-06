
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
	
	addEventAdultAmountSelectClicked(element)
	{
		element.click(this.pageEventHandler.adultAmountSelectClicked);
	}
	
	addEventChildAmountSelectClicked(element)
	{
		element.click(this.pageEventHandler.childAmountSelectClicked);
	}
	
	addEventSeatPositionSelectClicked(element)
	{
		element.click(this.pageEventHandler.seatPositionSelectClicked);
	}
}

class Data
{
	constructor(controller)
	{
		this.controller = controller;
		this.room = new Room();
		this.amountAdult = 0;
		this.amountChild = 0;
		this.adultPrice = 10000;
		this.childPrice = 8000;
	}
	
	init()
	{
		this.room.createNewRoom();
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
        		<div id="seat_id_${seat_id}"class="seatList" data-rol="${seat_id}>
        		    <div id="text">
        		        ${col + 1}
					</div>
				</div>
				`;

				$(`#seat_id_${seat_id}`).css("left", left).css("top",top);
				
        	}	
        }
	}
}



