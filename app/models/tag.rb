class Tag < ApplicationRecord
  before_save { self.name = name.downcase.delete(" ") }
  validates :name, presence: true, uniqueness: {scope: :board_id}
  belongs_to :board
end
