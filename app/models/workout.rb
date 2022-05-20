class Workout < ApplicationRecord
  belongs_to :user
  has_one :result
end
