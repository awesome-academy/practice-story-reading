class StoriesController < ApplicationController
  def index
    @stories = Story.select(:id, :name, :author, :description, :process,
      :status).page(params[:page]).per Settings.stories.number_stories
  end

  def show
    @story = Story.find_by id: params[:id]
    @stories = Story.select(:id, :name, :author).page(params[:page])
                    .per Settings.stories.number_hot_stories
    @chapters = Chapter.by_story.page(params[:page])
                       .per Settings.stories.number_chapters
  end
end
