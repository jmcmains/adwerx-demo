class Ad < ActiveRecord::Base
    mount_uploader :house_image, HouseImageUploader
    mount_uploader :profile_image, ProfileImageUploader
    
    def city_state
        if zipcode =~/^\d{5}(-\d{4})?$/
            zc=ZipCodes.identify(zipcode)
            if !zc.blank?
                return zc[:city] + ", " + zc[:state_code]
            end
        end
        return zipcode
    end
end
