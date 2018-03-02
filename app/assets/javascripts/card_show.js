$(document).ready(selectCard)

	var cardUrl
	
  function selectCard(card_number) {
		$("#age a ").click(function(e){ 	
    	e.preventDefault();
    	cardUrl = this.href
    	let cardSelect = $.get(this.href +".json", function(data){
    	$('.stones').html( "" );
    	 let newCard = new Card(data)
    	 newCard.renderCard()
    	});
  	});
	};

	$(function (){
		$("form").submit(function(e){
			e.preventDefault();
			console.log(this.action)
			var values = $(this).serialize();
			console.log(values)
			var posting = $.post(this.action, values);
			 posting.done(function(data) {
       	console.log("success")
      });
			
		});
	});

	function Card(data) {
		
			this.url = cardUrl
			this.image = data["image"]
			this.age = data["age"]
			this.height = data["height"]
			this.weight = data["weight"]
			this.advil_dosage = data["advil_dosage"]
			this.tylenol_dosage = data["tylenol_dosage"]
			this.flu_shot = data["flu_shot"]
			this.child = data["child"]
			this.milestones = data["milestones"]
	};	

		Card.prototype.renderCard = function(){
		
		
		if (this.image === "/images/original/missing.png"){
			$( ".field" ).html("<small> No image for this card. <br><a data-method='get' href='"+ this.url + "/edit'>Upload an image</a>" );
		}	else {
			$( ".field" ).html(`<img src= ${this.image } height = "150px" >`);
		};
		
		$(".age").text(`${this.age} old`)
		
		
		!this.height ? $(".height").text("") : $(".height").text(`Height: ${this.height}`);

		!this.weight ? $(".weight").text("") : $(".weight").text(`Weight: ${this.weight}`);

		!this.advil_dosage ? $(".advil").text("") : $(".advil").text(`Advil Dosage: ${this.advil_dosage} mL`);

		!this.tylenol_dosage ? $(".tylenol").text("") : $(".tylenol").text(`Tylenol Dosage: ${this.tylenol_dosage} mL`) ;

		!this.flu_shot ? $(".flu").text("Flu shot ? Not yet!") : $(".flu").text("Flu shot ? Yes!");	

		$(".cardLink").html(`<small><a data-method="get" href="${this.url}/edit">Edit or Delete this card</a></small>`)

		showMilestone(this);
	}

	function showMilestone(card){
		console.log(card.child.name)
		
		$(".stonehead").html("<b>Here are some milestones " + card.child.name + " reached at this age : </b><br>")
				
			card.milestones.forEach(function(milestone){
				$('.stones').append("<small>" + milestone.title + "</small> <br>")    
			});
			
			if (card.milestones.length === 0){
					$(".stonehead").html("<p><p> There are no milestones for this age.  </p>")
			};
	};


// function createMilestone(mileSubmit) {

// 	var values = mileSubmit.serialize();
// 	console.log(values)
// };


