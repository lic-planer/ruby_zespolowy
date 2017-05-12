class Movie < ApplicationRecord

	belongs_to :director
	belongs_to :type

	validates :title,
		presence: true

	validates_format_of :image, :with => /(http|https):\/\/[\S]+(\.jpg|\.png)+/,
    :message => "Adres musi odnosić się do obrazka .jpg lub .png"

end
