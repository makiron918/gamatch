class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :image, ImageUploader
  validates :nickname, presence: true
  validates :intro, length: { maximum: 255 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  validates_associated :games
  
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
  has_many :plays
  has_many :games, through: :plays
  accepts_nested_attributes_for :games, allow_destroy: true
  # scope :has_game_id, -> game_id {
    # joins(:games).merge(Game.where(id: game_id))
  # }

  def self.search(search)
    if search
      User.joins(:games).where('games.platform LIKE(?)', "%#{search}%", "%#{search}%").uniq
    else
      User.all
    end
  end
end
