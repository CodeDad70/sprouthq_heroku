class CardSerializer < ActiveModel::Serializer
  attributes :age, :years, :months, :height, :weight, :advil_dosage, :tylenol_dosage, :flu_shot, :image, :milestones
  belongs_to :child
end

