class Order < ApplicationRecord
  belongs_to :showing

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :credit_card, presence: true, length: {is: 16}, format: { with: /\A\d[\d,\s]*\z/ }
  validates :expiration_date, presence: true, format: { with: /\A[0-9]{2}\/[0-9]{2}\z/ } 

  def movie_name
    self.showing.movie.name
  end
end