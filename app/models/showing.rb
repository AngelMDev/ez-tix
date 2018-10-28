class Showing < ApplicationRecord
  belongs_to :auditorium
  belongs_to :movie
  has_many :orders

  validates :datetime, presence: true

  scope :not_sold_out, -> { joins(:auditorium).where('capacity - seats_taken > 0') }
  scope :now_playing, -> { where("datetime > ? ", Time.current) }
  scope :available, -> { not_sold_out.now_playing }
  
  def sold_out?
    self.auditorium.capacity - self.seats_taken <= 0
  end

  def formatted_date
    self.datetime.strftime("%H:%M %m-%d-%Y") unless self.datetime.nil?
  end

  def playing_now?
    self.datetime > Time.current
  end

end