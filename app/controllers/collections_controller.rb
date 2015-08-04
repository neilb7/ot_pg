class CollectionsController < ApplicationController
  respond_to :html
  def index
    @collection = Collection.all
  end

  def new
    @collection = Collection.new
    respond_with (@collection)
  end

  def create
    @collection = Collection.new(collection_params)
    @collection.save
    respond_with (@collection)
  end

  def edit
    @collection = Collection.find(params[:id])
  end

  def update
    @collection = Collection.find(params[:id])
    
    if @collection.update(collection_params)
      redirect_to @collection
    else
      render 'edit'
    end    
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def destroy
    @collection = Collection.find(params[:id])
    @collection.destroy
    redirect_to @collection
  end

  private
    def collection_params
      params.require(:collection).permit(:id,:name)
    end
end
