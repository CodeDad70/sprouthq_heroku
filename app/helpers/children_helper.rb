module ChildrenHelper

	def fix_date(child)
		child.birthday.strftime("%B %e, %Y")
	end

	def eye_check(child)
		if child.eye_color != ""
			"Eye Color: #{child.eye_color}"
		end
	end

	def hair_check(child)
		if child.hair_color != ""
			"Hair Color: #{child.hair_color}"
		end
	end

	def gender_check(child)
		if child.gender != ""
			"Gender: #{child.gender}"
		end
	end

end
