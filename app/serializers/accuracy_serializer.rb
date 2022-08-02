class AccuracySerializer < ActiveModel::Serializer
  attributes :id, :missed, :hit, :total, :timeba, :acc_percent, :user_id, :game_id
  has_one :user
end
