class Card < ApplicationRecord
  belongs_to :user, optional: true
  has_many :books
  has_many :added_cards, through: :books, source: :user
  has_many :comments, dependent: :delete_all
  has_one_attached :cardpic
  validates :cardname, presence: true, length: { minimum: 2 }
  validates :carddes, presence: true, length: { minimum: 50, maximum: 200 }
  validates :cardprice, presence: true
  validates :cardgen, presence: true
  validates :cardpage, presence: true
  validates :cardyear, presence: true
end
