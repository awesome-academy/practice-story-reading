class CategoriesController < ApplicationController
  def index
    @categories = Category.select(:id, :name, :description).page(params[:page])
                          .per Settings.stories.number_stories
  end
end
