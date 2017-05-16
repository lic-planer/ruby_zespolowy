class Movie < ApplicationRecord

	mount_uploader :image, PosterUploader

	belongs_to :director
	belongs_to :type

	validates :title,
		presence: true

	validates_format_of :trailer, :with => /(?:https?:\/\/)?(?:www\.)?youtu\.?be(?:\.com)?\/?.*(?:watch|embed)?(?:.*v=|v\/|\/)([\w\-_]+)\&?/,
		:message => "Akceptowalne są tylko adresy z serweru YouTube"

	ratyrate_rateable "rating"

end
