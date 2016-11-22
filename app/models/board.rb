class Board < ApplicationRecord
  validates :name, presence: true
  has_many :sounds
end
