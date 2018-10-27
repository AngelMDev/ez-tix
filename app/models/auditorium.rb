class Auditorium < ApplicationRecord
  has_many :showings
  has_many :movies, through: :showings

  validates :capacity, presence: true, numericality: { only_integer: true }
end