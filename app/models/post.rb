class Post < ApplicationRecord

  with_options presence: true do
    validates :days
    validates :dayofweek_id
  end

  belongs_to :user
  has_many :favorites, dependent: :destroy
end
