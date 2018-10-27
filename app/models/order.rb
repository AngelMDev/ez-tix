class Order < ApplicationRecord
  belongs_to :showing

  def movie_name
    self.showing.movie.name
  end
end