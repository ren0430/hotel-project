class Hotel < ApplicationRecord
has_many :reviews
	mount_uploader :picture, PictureUploader
end
