class Ad < ActiveRecord::Base
    mount_uploader :house_image, HouseImageUploader
    mount_uploader :profile_image, ProfileImageUploader
end
