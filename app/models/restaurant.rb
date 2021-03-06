class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :phone_number, presence: true
  has_many :reviews, dependent: :destroy
end
