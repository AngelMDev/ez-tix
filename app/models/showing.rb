class Showing < ApplicationRecord
  belongs_to :auditorium
  belongs_to :movie
  has_many :orders

  scope :not_sold_out, -> { joins(:auditorium).where('capacity - seats_taken > 0') }
  
  def sold_out?
    self.auditorium.capacity - self.seats_taken <= 0
  end

  def time
    self.datetime.strftime("%H:%M %m-%d-%Y")
  end

end