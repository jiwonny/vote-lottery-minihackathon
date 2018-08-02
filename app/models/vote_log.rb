class VoteLog < ApplicationRecord
    mount_uploader :image, S3Uploader
    belongs_to :school_db
end
