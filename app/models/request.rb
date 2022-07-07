class Request < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :content, length: { minimum: 140, too_short: "140 characters is the minimum." }
  validates :content, length: { maximum: 500, too_long: "500 characters is the maximum allowed." }
end
