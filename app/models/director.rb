class Director < ApplicationRecord

  has_many :movies

  validates :name,
		presence: true

  validates :last_name,
  	presence: true

end
