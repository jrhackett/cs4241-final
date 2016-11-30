class Sound < ApplicationRecord
   mount_uploader :soundAttachment, SoundAttachmentUploader
   validates :name, presence: true
   validates :soundAttachment, presence: true

   has_many :comments, dependent: :destroy
   belongs_to :board
end
