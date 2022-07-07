class Offer < ApplicationRecord
  belongs_to :district
  belongs_to :user
  has_many :offer_categories, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :categories, through: :offer_categories
  has_many :requests, dependent: :destroy
  validates :title, :description, :address, :district, :email, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
