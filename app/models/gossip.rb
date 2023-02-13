class Gossip < ApplicationRecord
  belongs_to :user
  has_many :JoinTableGossipTag
  has_many :tags, through: :JoinTableGossipTag
end
