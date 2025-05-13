class BookmarksController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @bookmark = @category.bookmarks.new
  end

  def create
    @category = Category.find(params[:category_id])
    @bookmark = @category.bookmarks.new(bookmark_params)
    if @bookmark.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end
end
