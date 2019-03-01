module ChaptersHelper
  def get_previous_chapter current_chapter
    Chapter.find_by id: (current_chapter.id - 1)
  end

  def get_next_chapter current_chapter
    Chapter.find_by id: (current_chapter.id + 1)
  end
end
