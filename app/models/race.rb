class Race < ApplicationRecord
  belongs_to :city
  has_many :race_watchlists
  has_many :users, through: :race_watchlists
end
