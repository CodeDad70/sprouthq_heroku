$(document).ready(selectCard)
	

  function selectCard(card_number){
		$("#age a ").click(function(e){
    	e.preventDefault();
    	let cardSelect = this.href
    	$('.stones').html( "" );
    	findCard(cardSelect)
  	});
	};

	function selectImage(){
		$("#upload").click(function(){
			$('#replace').html("worked")
		})
	}

	function findCard(cardSelect){
		
		$.get(cardSelect +".json", function(data){
		if (data['image'] === "/images/original/missing.png"){
			$( ".field" ).html("<small> No image for this card. <a href='#'><div id = 'upload'>Upload an image</div></a><div id = 'replace'></div> </small>" );
		}	else {
			$( ".field" ).html("<img src=" + data["image"]+ " height = " + "150px" + ">" );
		};
		
		$(".age").text(data["age"] + " old")
		
		!data['height'] ? $(".height").text("") : $(".height").text("Height: " + data["height"]);

		!data['weight'] ? $(".weight").text("") : $(".weight").text("Weight: " + data["weight"]);

		!data['advil_dosage'] ? $(".advil").text("") : $(".advil").text("Advil Dosage: " + data["advil_dosage"] + " mL");

		!data["tylenol_dosage"] ? $(".tylenol").text("") : $(".tylenol").text("Tylenol Dosage: " + data["tylenol_dosage"] + " mL") ;

		!data["flu_shot"] ? $(".flu").text("Flu shot ? Not yet!") : $(".flu").text("Flu shot ? Yes!");	

		$(".stonehead").html("<b>Here are some milestones " + data.child.name + " reached at this age : </b><br>")
			
		data.milestones.forEach(function(milestone){

				$('.stones').append("<small>" + milestone.title + "</small> <br>")
    
			});
		console.log(data["milestones"])
			if (data["milestones"].length === 0){
				$(".stonehead").html("<b>Worked!!!!! " + data.child.name + " reached at this age : </b><br>")
			};
		});
	};	




