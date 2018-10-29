class Order < ApplicationRecord
  belongs_to :showing

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :credit_card, presence: true, length: {in: 16..20}, format: { with: /\A\d[\d,\s]*\z/ }
  validates :expiration_date, presence: true, format: { with: /\A[0-9]{2}\/[0-9]{2}\z/ }
  validates_with CreditcardValidator 
  validate :valid_showing

  def movie_name
    self.showing.movie.name
  end

  def movie_date
    self.showing.formatted_date
  end

  def auditorium
    self.showing.auditorium.name
  end

  private

  def valid_showing
    errors.add(:showing_id, "sold out") if showing.sold_out?
    errors.add(:showing_id, "has expired") unless showing.playing_now? 
  end
end