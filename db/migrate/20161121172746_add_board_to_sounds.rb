class AddBoardToSounds < ActiveRecord::Migration[5.0]
  def change
    add_reference :sounds, :board, foreign_key: true
  end
end
