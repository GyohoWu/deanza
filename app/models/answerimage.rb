class Answerimage < ApplicationRecord
    mount_uploader :image, ImageUploader
    validates :answer, {length:{maximum: 350}}
end
