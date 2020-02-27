class Game < ApplicationRecord
  has_many :plays, dependent: :destroy
  has_many :users, through: :plays

  validates :name,  presence: true
  validates :platform,     presence: true

  scope :id_is, -> id {
    where(id: id)
  }
end
