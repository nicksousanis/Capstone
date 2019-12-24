class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  belongs_to :city
  has_many :weekly_stats
  has_many :workouts
  has_many :posts
  has_many :comments
  has_many :race_watchlists
  has_many :races, through: :race_watchlist
  has_many :completed_badges
  has_many :badges, through: :completed_badges
end
