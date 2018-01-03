class Card < ApplicationRecord

	belongs_to :child
	validate :age_entered
	validates_length_of :weight, :minimum => 1, :maximum => 20, :allow_blank => true
	validates_length_of :height, :minimum => 1, :maximum => 20, :allow_blank => true
	validates :advil_dosage, numericality: { message: 'should be a number'}, :allow_blank => true
	validates :tylenol_dosage, numericality: { message: 'should be a number'}, :allow_blank => true
	

	def age_entered
		if self.years == 0 && self.months == 0 
			errors.add(:age, "can't be blank!")
		end
	end

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
		age.gsub("year", "yr").gsub("month", "mo")
	end


	




end
