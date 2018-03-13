$(document).ready(selectCard)
	
	
	
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

		const btn = $(".milesButton");
		$(".create_milestone").submit(function(e){
			 e.preventDefault();
       
			$('.stones').html( "" );
			const values = $(this).serialize(); 
			const urlNow = window.location.href
			const milestoneAction = urlNow.replace(/^[^=]*3000/,'');
			const posting = $.post(milestoneAction, values);
				posting.done(function(data){
					btn.prop('disabled', false);
					$(".milesField").val("")
					updateMilestone(data);	
				});
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
			this.advilDosage = data["advil_dosage"]
			this.tylenolDosage = data["tylenol_dosage"]
			this.fluShot = data["flu_shot"]
			this.child = data["child"]
			this.milestones = data["milestones"]
		}

		renderCard() {

			window.history.pushState(null, null, this.url)

			if (this.image === "/images/original/missing.png"){
				$( ".field" ).html("<small> No image for this card. <br><a data-method='get' href='"+ this.url + "/edit'>Upload an image</a>" );
				}	else {
				$( ".field" ).html(`<img src= ${this.image } height = "150px" >`);
			};
			
			$(".age").text(`${this.age} old`)
			
			!this.height ? $(".height").text("") : $(".height").text(`Height: ${this.height}`);

			!this.weight ? $(".weight").text("") : $(".weight").text(`Weight: ${this.weight}`);

			!this.advilDosage ? $(".advil").text("") : $(".advil").text(`Advil Dosage: ${this.advilDosage} mL`);

			!this.tylenolDosage ? $(".tylenol").text("") : $(".tylenol").text(`Tylenol Dosage: ${this.tylenolDosage} mL`) ;

			!this.fluShot ? $(".flu").text("Flu shot ? Not yet!") : $(".flu").text("Flu shot ? Yes!");	

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
