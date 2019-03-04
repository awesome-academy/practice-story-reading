module ApplicationHelper
  def full_title page_title = ""
    base_title = t "helpers.application.title"
    page_title.empty? ? base_title : page_title + " | " + base_title
  end

  def categories_list
    Category.pluck :name
  end
end
