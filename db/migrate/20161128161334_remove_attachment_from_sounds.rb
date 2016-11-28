class RemoveAttachmentFromSounds < ActiveRecord::Migration[5.0]
  def change
  	remove_column :sounds, :attachment
  end
end
