City.create!(city: "Chicago")
City.create!(city: "New York")
City.create!(city: "Boston")
City.create!(city: "Los Angeles")

User.create!(name: "Nick", email: "nick@email.com", password: "password", profile_picture: "", city_id: 1, completed_5k: 3, completed_10k: 2, completed_marathon: 1)
User.create!(name: "Mike", email: "mike@email.com", password: "password", profile_picture: "", city_id: 4, completed_5k: 10, completed_10k: 4, completed_marathon: 2)
User.create!(name: "Alex", email: "alex@email.com", password: "password", profile_picture: "", city_id: 3, completed_5k: 1, completed_10k: 0, completed_marathon: 0)
User.create!(name: "Kevin", email: "kevin@email.com", password: "password", profile_picture: "", city_id: 2, completed_5k: 0, completed_10k: 0, completed_marathon: 0)

WeeklyStat.create!(weekly_miles: 20.55, user_id: 1, goals: 25, week_number: 1)
WeeklyStat.create!(weekly_miles: 50, user_id: 2, goals: 40, week_number: 1)
WeeklyStat.create!(weekly_miles: 15, user_id: 3, goals: 20, week_number: 1)
WeeklyStat.create!(weekly_miles: 7.5, user_id: 4, goals: 10, week_number: 1)

Race.create!(name: "Chicago 5k", race_type: "5k", date: Time.new(2020, 1, 14), city_id: 1)
Race.create!(name: "Chicago 10k", race_type: "10k", date: Time.new(2020, 1, 15), city_id: 1)
Race.create!(name: "New York Marathon", race_type: "Marathon", date: Time.new(2020, 1, 14), city_id: 2)
Race.create!(name: "Boston Marathon", race_type: "Marathon", date: Time.new(2020, 1, 17), city_id: 3)
Race.create!(name: "LA 10k", race_type: "10k", date: Time.new(2020, 1, 20), city_id: 4)

RaceWatchlist.create!(user_id: 1, race_id: 1, result_time: "00:20:00")
RaceWatchlist.create!(user_id: 1, race_id: 2, result_time: "")
RaceWatchlist.create!(user_id: 2, race_id: 5, result_time: "04:25:00")
RaceWatchlist.create!(user_id: 3, race_id: 4, result_time: "05:30:00")
RaceWatchlist.create!(user_id: 4, race_id: 3, result_time: "02:20:00")

Post.create!(post: "This is the very first Chicago forum post!", user_id: 1, city_id: 1)
Post.create!(post: "This is the very first New York forum post!", user_id: 4, city_id: 2)
Post.create!(post: "This is the very first Boston forum post!", user_id: 3, city_id: 3)
Post.create!(post: "This is the very first Los Angeles forum post!", user_id: 2, city_id: 4)

Comment.create!(comment: "This is the first comment!", post_id: 1, user_id: 1)
Comment.create!(comment: "This is the second comment!", post_id: 1, user_id: 2)
Comment.create!(comment: "This is the third comment!", post_id: 1, user_id: 3)
Comment.create!(comment: "This is the first comment!", post_id: 2, user_id: 4)

Workout.create!(distance: 3.2, user_id: 1, workout_time: "00:07:00")
Workout.create!(distance: 5.2, user_id: 2, workout_time: "00:05:50")
Workout.create!(distance: 2, user_id: 3, workout_time: "00:16:23")
Workout.create!(distance: 1.75, user_id: 4, workout_time: "00:25:41")

Coordinate.create!(Latitude: 10.25232, Longitude: 9.9234934, workout_id: 1)

Badge.create!(name: "Complete a marathon!")
Badge.create!(name: "Complete 3 marathons!")
Badge.create!(name: "Complete 10 5Ks!")
Badge.create!(name: "Complete 5 10Ks!")

CompletedBadge.create!(user_id: 1, badge_id: 1)
CompletedBadge.create!(user_id: 2, badge_id: 1)
CompletedBadge.create!(user_id: 2, badge_id: 3)
