class Sound < ApplicationRecord
   require 'file_size_validator' 
   mount_uploader :soundAttachment, SoundAttachmentUploader
   validates :name, presence: true
   validates :soundAttachment, presence: true #, :file_size => { :maximum => 10.megabytes.to_i } 

   has_many :comments, dependent: :destroy
   belongs_to :board
end
