class Recipe < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, inclusion: { in: 0..10 }
end
