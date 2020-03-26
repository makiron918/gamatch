class Game < ApplicationRecord
  has_many :plays, dependent: :destroy
  has_many :users, through: :plays
  has_ancestry
  validates_associated :users

  validates :platform, presence: true

  scope :id_is, -> id {
    where(id: id)
  }
end
