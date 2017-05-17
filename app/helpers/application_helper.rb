module ApplicationHelper
  def full_title(page_title = '')
    default_title = 'Ruby on Rails Tutorial Sample App'
    if page_title.empty?
      default_title
    else
      "#{page_title} | #{default_title}"
    end
  end
end
