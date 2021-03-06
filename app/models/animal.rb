class Animal < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :category, :address, :price_per_day, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :species, :category, :description],
    using: {
      tsearch: { prefix: true }
    }
end
