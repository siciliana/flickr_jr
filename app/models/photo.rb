class Photo < ActiveRecord::Base
  # mount_uploader :file, uploader 

  belongs_to :album
  belongs_to :user
end
