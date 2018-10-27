class Showtime < ApplicationRecord
  belongs_to :auditorium
  belongs_to :movie

  scope :not_sold_out, -> { joins(:auditorium).where('capacity - seats_taken > 0') }
  
  def sold_out?
    self.auditorium.capacity - self.seats_taken <= 0
  end
end