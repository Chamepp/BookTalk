class Card < ApplicationRecord
  has_many :comments
  validates :cardname, presence: true, length: { minimum: 5 }
  validates :cardprice, presence: true, length: { minimum: 1 }
  validates :carddes, presence: true, length: { minimum: 30, maximum: 40 }
  validates :cardgen, presence: true
  validates :cardpage, presence: true, length: { minimum: 1 }
  validates :cardyear, presence: true, length: { minimum: 1 }
end
