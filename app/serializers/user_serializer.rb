class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :img_profile
  has_many :accuracies
end
