class Like < ApplicationRecord
  belongs_to :feeling
  belongs_to :user

  def self.liked?(user, feeling)
   Like.where(user: user, feeling: feeling).any?
  end
end
