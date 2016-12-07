class Board < ApplicationRecord
  validates :name, presence: true
  has_many :sounds, dependent: :destroy
  has_many :tags, dependent: :destroy
end
