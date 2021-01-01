class User < ApplicationRecord
  has_secure_password
  has_many :cards, dependent: :destroy
  has_many :books
  has_many :books_additions, through: :books, source: :card
  has_one_attached :avatar
  validates_presence_of :email
  validates_uniqueness_of :email
end
