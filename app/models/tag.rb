class Tag < ApplicationRecord
  has_many :JoinTableGossipTag
  has_many :gossips, through: :JoinTableGossipTag
end
