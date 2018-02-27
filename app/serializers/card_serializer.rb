class CardSerializer < ActiveModel::Serializer
  attributes :id, :age, :years, :months, :height, :weight, :advil_dosage, :tylenol_dosage, :flu_shot, :image
  belongs_to :child
end

