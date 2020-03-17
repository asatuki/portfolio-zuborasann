class FavoritesController < ApplicationController

	def create
		recipe = Recipe.find(params[:recipe_id])
		favorite = current_user.favorites.build(recipe_id: recipe.id)
		favorite.save
		redirect_to recipe_show_path(recipe)
	end

	def destroy
		recipe = Recipe.find(params[:recipe_id])
		favorite = current_user.favorites.find_by(recipe_id: recipe.id)
		favorite.destroy
		redirect_to recipe_show_path(recipe)
	end

end
