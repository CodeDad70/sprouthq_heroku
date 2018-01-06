class Card < ApplicationRecord

	belongs_to :child
	has_many :card_milestones
	has_many :milestones, through: :card_milestones
	accepts_nested_attributes_for :milestones
	
	#validates :age, uniqueness: true
	validate :age_unique, :on => :create
	validate :age_entered
	validates_length_of :weight, :minimum => 1, :maximum => 20, :allow_blank => true
	validates_length_of :height, :minimum => 1, :maximum => 20, :allow_blank => true
	validates :advil_dosage, numericality: { message: 'should be a number'}, :allow_blank => true
	validates :tylenol_dosage, numericality: { message: 'should be a number'}, :allow_blank => true


  def milestones_attributes=(milestone_attributes)
   	milestone_attributes.values.each do |milestone_attribute|
  		milestone = milestone_attribute.delete_if {|k, v| v.empty? }
  		if !milestone.empty? 
  			milestone_create = Milestone.find_or_create_by(milestone_attribute)
    		self.milestones << milestone_create
    	end
    end
	end

	def age_unique
		child = Child.find(self.child_id)
		child.cards.each do |check|
			if check.age == self.age
			errors.add(:age, "already exists")
			end
		end
	end

	def age_entered
		if self.years == 0 && self.months == 0 
			errors.add(:age, "can't be blank!")
		end
	end

	def age_create
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
		age_create.gsub("year", "yr").gsub("month", "mo")
	end

end
