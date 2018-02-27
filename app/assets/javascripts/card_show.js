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
		


		// if(!data['height']){$(".height").text("")} 
		// 	else {$(".height").text("Height: " + data["height"])}
		// if (!data['weight']){$(".weight").text("")}
		// 	else {$(".weight").text("Weight: " + data["weight"])
		
		// if (!data["advil_dosage"]){$(".advil").text("")}
		// 	else{$(".advil").text("Advil Dosage: " + data["advil_dosage"])}
		!data['advil_dosage'] ? $(".advil").text("") : $(".advil").text("Advil Dosage: " + data["advil_dosage"])
		!data["tylenol_dosage"] ? $(".tylenol").text("") : $(".tylenol").text("Tylenol Dosage: " + data["tylenol_dosage"])


	
		$(".flu").text("Flu Shot? " + data["flu_shot"])	
		});
	};	

