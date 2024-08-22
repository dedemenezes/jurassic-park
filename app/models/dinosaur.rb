class Dinosaur < ApplicationRecord
  belongs_to :park
  has_many :completions, dependent: :destroy
  validates :name, :image_url, presence: true
end
