module ApplicationHelper

  def display_time(time)
    diff = (Time.now - time) / 60
    if diff > 1440
      time.strftime('%b %e, %Y')
    elsif diff < 1
      "Just now"
    elsif diff < 2
     "1 min ago"
    elsif diff < 60
     "#{diff.floor} mins ago"
    elsif diff < 120
     "1 hour ago"
    else
      "#{(diff / 60).floor} hours ago"
    end
  end

  def theme_color
    if current_user&.color
      color_hex_code(current_user.color)
    else
      "#C8EAE8"
    end
  end

  def color_hex_code(color)
    if color == "blue"
      "#C8EAE8"
    elsif color == "pink"
      "#F9DAD7"
    end
  end

end
