class Animal < ApplicationRecord
  belongs_to :user
  has_one_attached :photo


  validates :name, :category, :address, :price_per_day, presence: true
end
