class AddSoundAttachmentToSounds < ActiveRecord::Migration[5.0]
  def change
    add_column :sounds, :soundAttachment, :string
  end
end
