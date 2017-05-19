class Restaurant < ApplicationRecord
  validates :name, :address, :price, :lat, :long, :phone, :mon, :tue,
   :wed, :thu, :fri, :sat, :sun, :categories, presence: true
  validates :price, inclusion: { in: ['$', '$$', '$$$', '$$$$'] }

end
