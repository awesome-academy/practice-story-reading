class StaticPagesController < ApplicationController
  def show
    @stories = Story.select(:id, :name, :image).page(params[:page])
                    .per Settings.static_pages.number_stories
    render template: "static_pages/#{params[:page]}"
  end
end
