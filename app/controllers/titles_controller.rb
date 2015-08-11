class TitlesController < ApplicationController
  def create
    @collection = Collection.find(params[:collection_id])
    @title = @collection.titles.create(title_params)
    redirect_to collection_path(@collection)
  end

  def destroy
    @collection = Collection.find(params[:collection_id])
    @title = @collection.titles.find(params[:id])
    @title.destroy
    redirect_to collection_path(@collection)
  end

  private
    def title_params
      params.require(:title).permit(:name, :desc)
    end
end
