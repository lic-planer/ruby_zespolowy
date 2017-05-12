class Movie < ApplicationRecord

	belongs_to :director
	belongs_to :type

	validates :title,
		presence: true

end
