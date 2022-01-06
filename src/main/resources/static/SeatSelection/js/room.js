
class MainController
{
	constructor()
	{
		this.room = new Room();
        this.generator = new Generator(this);
	}
	
	start()
	{
		this.room.createNewRoom();
		this.generator.generateRoomTable();
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

	generateRoomTable()
	{
        let room = this.controller.room;
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