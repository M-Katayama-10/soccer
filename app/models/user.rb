class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :belongs
    validates :category_id
    validates :hometown
  end

  has_many :posts, dependent: :destroy
  has_one_attached :image
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(post_id)
    favorites.where(post_id: post_id).exists?
  end

end