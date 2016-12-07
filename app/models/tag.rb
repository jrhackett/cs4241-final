class Tag < ApplicationRecord
  before_save { self.name = name.downcase.delete(" ") }
  validates :name, presence: true, uniqueness: {scope: :board_id}, length: { minimum: 2, maximum: 16 }
  belongs_to :board
end
