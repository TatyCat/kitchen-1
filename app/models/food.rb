class Food < ApplicationRecord
  # Adding a validation, making the name REQUIRED
  validates :name, presence: true

  # Adding a validation, make the name UNIQUE
  validates :name, uniqueness: true

  # Calories must be between 0 and 5000
  validates :calories, inclusion: { in: (0..5000) }
end
