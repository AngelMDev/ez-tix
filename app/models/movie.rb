class Movie < ApplicationRecord
  has_many :showings
  has_many :auditoria, through: :showings

  validates :name, presence: true

  scope :now_playing, -> { joins(:showings).where('showings.datetime > ?', Time.current).distinct }

end