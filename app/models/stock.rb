class Stock < ApplicationRecord
  belongs_to :user

  validates :ticker, :quantity, :date, :price, :sold, presence: true
end
