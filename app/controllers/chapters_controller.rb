class ChaptersController < ApplicationController
  def show
    @chapter = Chapter.find_by id: params[:id]
    @chapters = Chapter.by_story

    return if @chapter && @chapters
    flash[:danger] = t "flash.danger.not_found_chapter"
  end
end
