class User < ApplicationRecord
    mount_uploader :avatar, AvatarUploader

    has_and_belongs_to_many :expenses

end
