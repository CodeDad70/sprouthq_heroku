$(document).ready(selectCard)
	
	let cardSelect
  
  function selectCard(card_number){
		$("#age a ").click(function(e){
    	e.preventDefault();
    	cardSelect = this.href
    	findCard(cardSelect)
  	});
	};

	function findCard(cardSelect){
		
		 $.get(cardSelect +".json", function(data){
		 	console.log(data.child["id"])
		 // if (data[#childId] === this.child[id])	{
		 // $(".age").text(data["age"])
		 // $(".height").text(data["height"])
		 // $(".weight").text(data["weight"])
		 // $(".advil").text(data["advil"])
		 // $(".tylenol").text(data["tylenol"])
		 // $(".flu").text(data["flu"])
		 // $(".field").text(data["image"])
		// }
		})
	}	

