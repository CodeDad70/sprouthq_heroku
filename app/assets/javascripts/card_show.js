$(document).ready(selectCard)

	var cardUrl
	
  function selectCard(card_number){
		$("#age a ").click(function(e){
    	
    	e.preventDefault();
    	cardUrl = this.href
    	let cardSelect = $.get(this.href +".json", function(data){

    	$('.stones').html( "" );
    	 let newCard = new Card(data)
    	 newCard.renderCard()
    	})
  	});
	};

	$(function (){
		$("form").submit(function(e){
			e.preventDefault();
			console.log(this)
			let mileSubmit = this.text
			createMilestone(mileSubmit)
		});
	});

	function Card(data) {
		console.log(data)
			this.url = cardUrl
			this.image = data["image"]
			this.age = data["age"]
			this.height = data["height"]
			this.weight = data["weight"]
			this.advil_dosage = data["advil_dosage"]
			this.tylenol_dosage = data["tylenol_dosage"]
			this.flu_shot = data["flu_shot"]
			// this.url = cardSelect
		
	};	


		Card.prototype.renderCard = function(card){
		console.log(this.age)
		
		if (this.image === "/images/original/missing.png"){
			$( ".field" ).html("<small> No image for this card. <br><a data-method='get' href='"+ this.url + "/edit'>Upload an image</a>" );
		}	else {
			$( ".field" ).html(`<img src= ${this.image } height = "150px" >` );
		};
		
		$(".age").text(`${this.age} old`)
		
		
		// !data['height'] ? $(".height").text("") : $(".height").text(`Height: ${this.height}`);

		// !data['weight'] ? $(".weight").text("") : $(".weight").text(`Weight: ${this.weight}`);

		// !data['advil_dosage'] ? $(".advil").text("") : $(".advil").text("Advil Dosage: " + data["advil_dosage"] + " mL");

		// !data["tylenol_dosage"] ? $(".tylenol").text("") : $(".tylenol").text("Tylenol Dosage: " + data["tylenol_dosage"] + " mL") ;

		// !data["flu_shot"] ? $(".flu").text("Flu shot ? Not yet!") : $(".flu").text("Flu shot ? Yes!");	
		// showMilestone(data);

		// $(".cardLink").html("<small><a data-method='get' href='"+ cardSelect + "/edit'>Edit or Delete this card</a></small>")
	}

function showMilestone(data){

	$(".stonehead").html("<b>Here are some milestones " + data.child.name + " reached at this age : </b><br>")
			
		data.milestones.forEach(function(milestone){

			$('.stones').append("<small>" + milestone.title + "</small> <br>")
    
			});
			if (data["milestones"].length === 0){
				$(".stonehead").html("<p><p> There are no milestones for this age.  </p>")
			};
		};


function createMilestone(mileSubmit) {
	console.log(mileSubmit)
};


