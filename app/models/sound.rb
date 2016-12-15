class Sound < ApplicationRecord
   require 'file_size_validator' 
   mount_uploader :soundAttachment, SoundAttachmentUploader
   validates :name, presence: true
   validates :soundAttachment, presence: true #, :file_size => { :maximum => 10.megabytes.to_i } 
   validate :soundSizeValidation
   has_many :comments, dependent: :destroy
   belongs_to :board
   belongs_to :user
   private

   ## Validates whether or not the size of the SoundAttachment exceeds 5MB. If it does, the server should not upload it.
   def soundSizeValidation
	   puts "is over 5MB" if soundAttachment.size > 5.megabytes #TODO: Test console log to make sure this works
	   errors[:soundAttachment] << "should be less than 5MB" if soundAttachment.size > 5.megabytes
   end
end
