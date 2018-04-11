class Product < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :nombre, use: :slugged

mount_uploader :foto, FotoUploader
mount_uploader :foto2, Foto2Uploader
mount_uploader :foto3, Foto3Uploader
end
