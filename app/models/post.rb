class Post < ApplicationRecord

  with_options presence: true do
    validates :days
    validates :dayofweek_id
  end

  def self.search(search)
    if search != ''
      Post.where('days LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end

  belongs_to :user
  has_many :favorites, dependent: :destroy
end
