class Like < ApplicationRecord
  validates :liked, inclusion: { in: [ true, false ] }

  belongs_to :wall_post
end
