class AddColorToBoards < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :color, :string
  end
end
