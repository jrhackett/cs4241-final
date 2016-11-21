class Sound < ApplicationRecord
   mount_uploader :soundAttachment, SoundAttachmentUploader # Tells rails to use this uploader for this model.
   validates :name, presence: true

   has_many :comments
end
