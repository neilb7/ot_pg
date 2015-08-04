class TitlesController < ApplicationController
  def new
    @collection = Collection.find(params[:id])
    @title = @collection.new
  end
  def create
    @collection = Collection.find(params[:collection_id])
    @title = @collection.titles.create(title_params)
    redirect_to @collection_path(@collection)
  end

  private
    def title_params
      params.require(:title).permit(:name, :description)
    end
end
