$(document).ready(selectCard)
	
	let cardSelect
	let testy
  
  function selectCard(card_number){
		$("#age a ").click(function(e){
    	e.preventDefault();
    	cardSelect = this.href
    	findCard(cardSelect)
  	});
	};

	function findCard(cardSelect){
		
		console.log(cardSelect)
		 testy = $.get(cardSelect +".json")
		 console.log(testy)
	}	


