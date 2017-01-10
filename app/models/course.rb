class Course < ApplicationRecord
  validates :price, presence: true
  validates :name, presence: true
  validates :address, uniqueness: true, presence: true
end
