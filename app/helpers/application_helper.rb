module ApplicationHelper
  def title(title)
    content_for :title, "#{title} · Whistler"
  end
end
