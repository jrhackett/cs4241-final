class Board < ApplicationRecord
  validates :name, presence: true
  has_many :sounds, dependent: :destroy
  has_and_belongs_to_many :tags 
end
