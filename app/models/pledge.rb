class Pledge < ActiveRecord::Base
    mount_uploader :image, S3Uploader
end