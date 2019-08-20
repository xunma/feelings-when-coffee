# frozen_string_literal: true

class Feeling < ApplicationRecord
  belongs_to :user

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

  def time_created
    diff = (Time.now - self.created_at) / 3600
    if diff > 24
      self.created_at.strftime('%b %e, %Y')
    elsif diff < 1
     "#{ (diff * 60).floor} mins ago"
    else
      "#{diff.floor} hours ago"
    end

  end
end
