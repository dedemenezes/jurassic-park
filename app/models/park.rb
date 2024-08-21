class Park < ApplicationRecord
  has_many :dinosaurs
  validates :name, :banner_url, presence: true
  validates :banner_url, length: { minimum: 5 }
end
