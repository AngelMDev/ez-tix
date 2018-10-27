class Movie < ApplicationRecord
  has_many :showings
  has_many :auditoria, through: :showings

  #TODO change to >
  scope :playing_now, -> { joins(:showings).where('showings.datetime < ?', Time.now) }

end