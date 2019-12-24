class City < ApplicationRecord
  has_many :posts
  has_many :users
  has_many :races
end
