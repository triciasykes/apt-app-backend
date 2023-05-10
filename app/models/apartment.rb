class Apartment < ApplicationRecord
  validates :street, :unit, :city, :state, :bedrooms, :bathrooms, :square_footage, :pets, :price, :image, presence: true
  belongs_to :user
end
