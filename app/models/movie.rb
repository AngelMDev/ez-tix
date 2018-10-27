class Movie < ApplicationRecord
  has_many :showtimes
  has_many :auditoria, through: :showtimes

  #TODO change to >
  scope :playing_now, -> { joins(:showtimes).where('showtimes.datetime < ?', Time.now) }

end