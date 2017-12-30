class Card < ApplicationRecord

	belongs_to :child
	validates :age, numericality: { message: 'should be a number'}
	validates :age, presence: true
	validates :weight, presence: true 
	validates :height, presence: true
	validates :advil_dosage, numericality: { message: 'should be a number'}
	validates :tylenol_dosage, numericality: { message: 'should be a number'}
end
