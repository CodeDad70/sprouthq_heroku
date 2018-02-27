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
			console.log(data["image"])
		if (data['image'] === "/images/original/missing.png"){
			$( ".field" ).html("No Image For This Card Yet" );
		}	else {
			$( ".field" ).html("<img src=" + data["image"]+ " height = " + "150px" + ">" )
		};
		
		$(".age").text(data["age"])
		$(".height").text("Height: " + data["height"])
		$(".weight").text("Weight: " + data["weight"])
		$(".advil").text("Advil Dosage: " + data["advil_dosage"])
		$(".tylenol").text("Tylenol Dosage: " + data["tylenol_dosage"])
		$(".flu").text("Flu Shot? " + data["flu_shot"])	
		});
	};	

