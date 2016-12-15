class AddUserRefToSounds < ActiveRecord::Migration[5.0]
  def change
    add_reference :sounds, :user, foreign_key: true
  end
end
