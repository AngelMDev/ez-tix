class Movie < ApplicationRecord
  has_many :showings
  has_many :auditoria, through: :showings

  validates :name, presence: true
  #TODO change to >
  scope :playing_now, -> { joins(:showings).where('showings.datetime < ?', Time.now) }

end