function selectCard(){$("#age a ").click(function(e){e.preventDefault(),cardAddy=this.href;$.get(this.href+".json",function(e){$(".stones").html(""),new Card(e).renderCard()})})}function showMilestone(e){$(".stonehead").html("<b>Here are some milestones "+e.child.name+" reached at this age : </b><br>"),e.milestones.forEach(function(e){$(".stones").append("<small>"+e.title+"</small> <br>")}),0===e.milestones.length&&$(".stonehead").html("<p><p> There are no milestones for this age.  </p>")}function updateMilestone(e){$(".stonehead").html("<b>Here are some milestones "+e.child.name+" reached at this age : </b><br>"),e.milestones.forEach(function(e){$(".stones").append("<small>"+e.title+"</small> <br>")})}$(document).ready(selectCard),$(function(){const e=$(".milesButton");$(".create_milestone").submit(function(t){t.preventDefault(),$(".stones").html("");const i=$(this).serialize(),s=window.location.href.replace(/^[^=]*3000/,"");$.post(s,i).done(function(t){e.prop("disabled",!1),$(".milesField").val(""),updateMilestone(t)}),e.prop("disabled",!0)})});class Card{constructor(e){this.url=cardAddy,this.image=e.image,this.age=e.age,this.height=e.height,this.weight=e.weight,this.advilDosage=e.advil_dosage,this.tylenolDosage=e.tylenol_dosage,this.fluShot=e.flu_shot,this.child=e.child,this.milestones=e.milestones}renderCard(){window.history.pushState(null,null,this.url),"/images/original/missing.png"===this.image?$(".field").html("<small> No image for this card. <br><a data-method='get' href='"+this.url+"/edit'>Upload an image</a>"):$(".field").html(`<img src= ${this.image} height = "150px" >`),$(".age").text(`${this.age} old`),this.height?$(".height").text(`Height: ${this.height}`):$(".height").text(""),this.weight?$(".weight").text(`Weight: ${this.weight}`):$(".weight").text(""),this.advilDosage?$(".advil").text(`Advil Dosage: ${this.advilDosage} mL`):$(".advil").text(""),this.tylenolDosage?$(".tylenol").text(`Tylenol Dosage: ${this.tylenolDosage} mL`):$(".tylenol").text(""),this.fluShot?$(".flu").text("Flu shot ? Yes!"):$(".flu").text("Flu shot ? Not yet!"),$(".cardLink").html(`<small><a data-method="get" href="${this.url}/edit">Edit or Delete this card</a></small>`),showMilestone(this)}}