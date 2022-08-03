class AccuracySerializer < ActiveModel::Serializer
  attributes :timeba
  has_one :user
end
