class Comment < ApplicationRecord
  belongs_to :feeling
  belongs_to :user
end
