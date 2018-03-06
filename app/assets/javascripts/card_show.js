$(document).ready(selectCard)
	
	let URL = []
	
  function selectCard(card_number) {
  	let cardURL
		$("#age a ").click(function(e){ 	
    	e.preventDefault();
    	cardUrl = this.href	
    	let cardSelect = $.get(this.href +".json", function(data){
    	$('.stones').html( "" );
    	 let newCard = new Card(data)
    	 newCard.renderCard();
    	});
  	});
	};

	$(function (){
		let urlNow
		let milestoneAction
		let btn = $(".milesButton");
		$(".create_milestone").submit(function(e){
			 e.preventDefault();
       
			$('.stones').html( "" );
			let values = $(this).serialize(); 
	
			if(URL.length >= 1){
				urlNow = URL.slice(-1).pop()
				milestoneAction = urlNow.slice(-19)
				let posting = $.post(milestoneAction, values);
					posting.done(function(data){
					  btn.prop('disabled', false);
					  $(".milesField").val("")
						updateMilestone(data);
					});
	
			} else {
				let posting = $.post(this.action, values);
					posting.done(function(data) { 
						btn.prop('disabled', false);
						$(".milesField").val("")
						updateMilestone(data);
					});
				};
			btn.prop('disabled', true);
		});
	});

	class Card {
		constructor(data) {
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
			URL.push(this.url);
		}

		renderCard() {
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
		};
	};

	function showMilestone(card){
		$(".stonehead").html("<b>Here are some milestones " + card.child.name + " reached at this age : </b><br>")	
		
		card.milestones.forEach(function(milestone){
				$('.stones').append("<small>" + milestone.title + "</small> <br>")    
			});
			
		if (card.milestones.length === 0){
			$(".stonehead").html("<p><p> There are no milestones for this age.  </p>")
		};
	};

	function updateMilestone(card){
		$(".stonehead").html("<b>Here are some milestones " + card.child.name + " reached at this age : </b><br>")
				
		card.milestones.forEach(function(milestone){
			$('.stones').append("<small>" + milestone.title + "</small> <br>")    
		});	
	};
