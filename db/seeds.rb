# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create!([{
#   username: "sample",
#   email: "sample@gmail.com",
#   name: "sample name",
#   password: "admin123"
# }])

# Workout.create!([{
#   sets: 5,
#   warmup: 60,
#   high_intensity: 30,
#   low_intensity: 30,
#   rest: 30,
#   cool_down: 30,
#   user_id: 1,
# }, 
# {
#   sets: 5,
#   warmup: 60,
#   high_intensity: 60,
#   low_intensity: 60,
#   rest: 30,
#   cool_down: 30,
#   user_id: 1,
# }
# ])

Result.create!([
  {
  calories_burned: 300,
  zones_avg: {"zone1" => "20", "zone2" => "20", "zone3" => "20"},
  heart_rate: {"hr1" => "100", "hr2" => "110", "hr3" => "105"},
  workout_id: 1
  },
  {
    calories_burned: 400,
    zones_avg: {"zone1" => "20", "zone2" => "20", "zone3" => "20"},
    heart_rate: {"hr1" => "98", "hr2" => "115", "hr3" => "105"},
    workout_id: 2
    }
])

