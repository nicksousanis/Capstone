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

  def is_watching_race(race)
    # Loop through the user's race_watchlists
    # Grab just the race ids
    # Use array .include? to see if the given race's id is in that array
    # [3, 2, 5, 21, 5].include? 32
    race_watchlists.map { |race_watchlist| race_watchlist.race_id }.include?(race.id)
  end
end
