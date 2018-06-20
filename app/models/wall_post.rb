class WallPost < ApplicationRecord
  validates :body, presence: true
  belongs_to :user
  has_many :likes

  def total_positive_likes
    likes.where(liked: true).count
  end

  def total_negative_likes
    likes.where(liked: false).count
  end
end
