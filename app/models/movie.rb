class Movie < ApplicationRecord
  has_many :showings
  has_many :auditoria, through: :showings

  validates :name, presence: true

  scope :now_playing, -> { joins(:showings).where('showings.datetime > ?', Time.current).distinct }

  def self.movie_orders
    movie_orders = {}
    Movie.all.each do |movie|
      movie_orders[movie.name] = movie.showings.map { |showing|
        showing.orders
      }.flatten
    end
    movie_orders
  end
end