class Other < ApplicationRecord
    mount_uploader :picture2, ImageUploader
    belongs_to :user
end
