class StoriesController < ApplicationController
  def index
    @stories = Story.select(:id, :name, :author, :description, :process,
      :status).page(params[:page]).per Settings.stories.number_stories
  end
end
