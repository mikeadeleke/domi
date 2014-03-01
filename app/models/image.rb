class Image < ActiveRecord::Base
  belongs_to :place
  mount_uploader :photo, PhotoUploader
end
