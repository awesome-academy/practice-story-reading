class ChaptersController < ApplicationController
  def show
    return if @chapter = Chapter.find_by(id: params[:id])
    flash[:danger] = t "flash.danger.not_found_chapter"
  end
end
