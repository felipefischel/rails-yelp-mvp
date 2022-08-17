class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, length: { minimum: 1 }
  validates :address, length: { minimum: 1 }
  validates :category, length: { minimum: 1 }
  validates :category, inclusion: { in: CATEGORIES }



end
