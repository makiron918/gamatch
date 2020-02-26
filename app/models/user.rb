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
  
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy

  def self.search(search)
    if search
      User.where('nickname LIKE(?)', "%#{search}%")
    else
      User.all
    end
  end
end
