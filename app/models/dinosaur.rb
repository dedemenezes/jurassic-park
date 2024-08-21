class Dinosaur < ApplicationRecord
  belongs_to :park
  validates :name, :image_url, presence: true
end
