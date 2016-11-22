class Sound < ApplicationRecord
   mount_uploader :soundAttachment, SoundAttachmentUploader
   validates :name, presence: true

   has_many :comments
   belongs_to :board
end
