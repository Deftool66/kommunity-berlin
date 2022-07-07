class Category < ApplicationRecord
  has_many :offer_categories, dependent: :destroy
  has_many :offers, through: :offer_categories
end
