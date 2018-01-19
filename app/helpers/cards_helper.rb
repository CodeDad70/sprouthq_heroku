module CardsHelper 

	def flu_shot_given(card)
		if card.flu_shot == true
			"Flu shot ? Yes!"
		else
			"Flu shot? Not yet"
		end
	end

	def height_check(card)
		if card.height != ""
			"Height: #{card.height}"
		end
	end

	def weight_check(card)
		if card.weight != ""
			"Weight: #{card.weight}"
		end
	end

	def advil_check(card)
		if card.advil_dosage != nil
			"Advil Dosage: #{card.advil_dosage} mL"
		end
	end

	def tylenol_check(card)
		if card.tylenol_dosage != nil
			"Tylenol Dosage: #{card.tylenol_dosage} mL"
		end
	end

	def short_age(card)
		card.age_create.gsub("year", "yr").gsub("month", "mo")
	end


end
