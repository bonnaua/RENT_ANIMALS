class Animal < ApplicationRecord
  belongs_to :user

  validates :name, :category, :address, :price_per_day, presence: true
end
