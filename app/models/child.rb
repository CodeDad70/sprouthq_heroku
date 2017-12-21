class Child < ApplicationRecord
	
	belongs_to :user, required: false
	
	has_many :ages
	accepts_nested_attributes_for :ages


   
  #  def ages_attributes=(attributes)

  #     self.ages_attributes = self.ages.build(attributes)
   
  # end



	
end