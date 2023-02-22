class Restaurant < ApplicationRecord

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :name, presence: true
  validates :address, presence: true
  has_many :reviews, dependent: :destroy
end
