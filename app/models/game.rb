class Game < ApplicationRecord
  has_many :plays, dependent: :destroy
  has_many :users, through: :plays
  has_ancestry
  validates_associated :users

  validates :name, presence: true
  validates :platform, presence: true

  def new_or_record_changed
    new_record? || will_save_change_to_nickname? || will_save_change_to_email? || will_save_change_to_image? || will_save_change_to_age? || will_save_change_to_sex? || will_save_change_to_voice? || will_save_change_to_intro?
  end

  scope :id_is, -> id {
    where(id: id)
  }
end
