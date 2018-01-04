module ChildrenHelper

		def fix_date(child)
			child.birthday.strftime("%B %e, %Y")
		end


		# def year_check
		# 	self.cards.detect do |check|
		# 		check.years != 0
		# 	end
		# end

		
		# def latest_card
		# 	if year_check
		# 		oldest = self.cards.maximum("years")
		# 		self.cards.find_by(years: (oldest))
		# 	else 
		# 		oldest = self.cards.maximum("months")
		# 		self.cards.find_by(months: (oldest))
		# 	end
		# end

		# def ordered
		# 	self.cards.order("years ASC", "months ASC")
		# end


end
