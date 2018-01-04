module CardsHelper

	def flu_shot_given(card)

	if card.flu_shot == true
			"Flu shot ? Yes!"
	else
			"Flu shot? Not yet"
		end
	end


end
