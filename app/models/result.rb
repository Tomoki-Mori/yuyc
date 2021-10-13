class Result < ApplicationRecord
    mount_uploader :picture1, ImageUploader
    belongs_to :user
end
