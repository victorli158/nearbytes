class Restaurant < ApplicationRecord
  validates :name, :description, :address, :hours, :price, :lat, :long,
    presence: true
  validates :price, inclusion: { in: ['$', '$$', '$$$', '$$$$'] }

end