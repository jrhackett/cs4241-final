class Sound < ApplicationRecord
   mount_uploader :soundAttachment, SoundAttachmentUploader
   validates :name, presence: true
   validates :soundAttachment, presence: true

   has_many :comments
   belongs_to :board
end
