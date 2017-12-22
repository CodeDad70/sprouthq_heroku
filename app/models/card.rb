class Card < ApplicationRecord

	belongs_to :child

	# def child_name
 #    self.try(:child).try(:name)
 #  end

 #  def child_name=(name)
 #    child = Child.find_or_create_by(name: name)
 #    self.child = child
 #  end
	

end
