class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, format: {with: /[\d() -]+/}
  validates :category, presence: true, inclusion: { in: %w(chinese italian french japanese belgian) }
end
