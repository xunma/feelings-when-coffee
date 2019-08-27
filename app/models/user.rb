class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :feelings

  def theme_color
    if self.color == "blue"
      "#C8EAE8"
    elsif self.color == "pink"
      "#F9DAD7"
    else
      "#C8EAE8"
    end
  end
end
