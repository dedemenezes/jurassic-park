class Dinosaur < ApplicationRecord
  validates :name, :image_url, presence: true
end
