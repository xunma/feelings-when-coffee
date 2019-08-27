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
end
