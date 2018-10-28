class Auditorium < ApplicationRecord
  has_many :showings
  has_many :movies, through: :showings

  validates :name, presence: true, uniqueness: true
  validates :capacity, presence: true, numericality: { only_integer: true }
end