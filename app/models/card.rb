class Card < ApplicationRecord

	belongs_to :child
	validates :age, numericality: { message: 'should be a number'}

end
