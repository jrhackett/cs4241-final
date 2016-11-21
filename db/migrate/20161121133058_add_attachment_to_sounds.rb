class AddAttachmentToSounds < ActiveRecord::Migration[5.0]
  def change
    add_column :sounds, :attachment, :string
  end
end
