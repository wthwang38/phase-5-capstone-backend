class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :img_profile, :total_missed, :total_hits, :total_total, :score

has_many :accuracies

end
