# frozen_string_literal: true

class Feeling < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  DETAILS = [ 'drink', 'music', 'wifi_password', 'coffee_shop']
  DETAILS.each do |detail|
    define_method "#{detail}_html" do
      case detail
      when "drink"
        "<i class='fas fa-mug-hot'></i>  #{self.drink}" unless self.drink&.empty?
      when "music"
        "<i class='fas fa-music'></i>  #{self.music}" unless self.music&.empty?
      when "coffee_shop"
        "<i class='fas fa-store-alt'></i>  #{self.coffee_shop}" unless self.coffee_shop&.empty?
      when "wifi_password"
        "<i class='fas fa-wifi'></i>  #{self.wifi_password}" unless self.wifi_password&.empty?
      end
    end
  end

end
