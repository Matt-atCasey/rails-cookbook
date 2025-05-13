class RecipesController < ApplicationController
  def show
  @category = Category.find(params[:category_id])
  @recipe   = @category.recipes.find(params[:id])
end
end
