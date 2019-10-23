class Like < ApplicationRecord
  belongs_to :feeling
  belongs_to :user

  def self.likes_uid_arr
    # grouped by feeling
    result = {}
    Like.pluck(:feeling_id, :user_id).each do |arr|
      f_id = arr[0]
      u_id = arr[1]
      if result[f_id].nil?
        result[f_id] = [u_id]
      else
        result[f_id] << u_id
      end
    end
    return result
  end

  # find user_id and feeling_id
  # check if feeling_id includes the feeling
  # if not render
end
