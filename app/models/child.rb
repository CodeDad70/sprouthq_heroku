class Child < ApplicationRecord
	
	belongs_to :user, required: false
	has_many :cards
	accepts_nested_attributes_for :cards

	validates :name, presence: true
	validates :name, uniqueness: true
	validates_length_of :name, :minimum => 1, :maximum => 15, :allow_blank => false
	validates :birthday, presence: true
	validates_length_of :eye_color, :minimum => 1, :maximum => 15, :allow_blank => true
	validates_length_of :hair_color, :minimum => 1, :maximum => 15, :allow_blank => true
	validates_length_of :gender, :minimum => 1, :maximum => 15, :allow_blank => true

	def latest_card
		oldest = self.ordered.last
		self.cards.find_by(id: (oldest.id))
	end

	def ordered
		self.cards.order("years ASC", "months ASC")
	end

end
