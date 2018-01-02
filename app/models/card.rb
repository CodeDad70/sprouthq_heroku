class Card < ApplicationRecord

	belongs_to :child
	# validates :age, numericality: { message: 'should be a number'}
	# validates :age, presence: true
	# validates :weight, presence: true 
	# validates :height, presence: true
	# validates :advil_dosage, numericality: { message: 'should be a number'}
	# validates :tylenol_dosage, numericality: { message: 'should be a number'}


	def age
		if self.years > 1 && self.months == 6
			"#{self.years} 1/2 years "
		elsif self.years == 0 && self.months == 1
			"#{self.months} month"
		elsif self.years == 0 && self.months > 1
			"#{self.months} months"	
		
		elsif self.years == 1 && self.months == 0
			"#{self.years} year"
		elsif self.years == 1 && self.months != 0 
			"#{self.years} year #{self.months} months"
		elsif self.years > 1 && self.months == 0
			"#{self.years} years"	
		elsif self.years > 1 && self.months	> 1
			"#{self.years} years #{self.months} months"
		end
	end

	def short_age
		age.gsub("year", "yr").gsub("month", "m")
	end



end
