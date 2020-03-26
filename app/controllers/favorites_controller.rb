class FavoritesController < ApplicationController

	def create
		recipe = Recipe.find(params[:recipe_id])
		recipe.count += 1
		recipe.save
		favorite = current_user.favorites.build(recipe_id: recipe.id)
		favorite.save
		@recipe = recipe
		@post_message = PostMessage.new
	end

	def destroy
		recipe = Recipe.find(params[:recipe_id])
		recipe.count -= 1
		recipe.save
		favorite = current_user.favorites.find_by(recipe_id: recipe.id)
		favorite.destroy
		@recipe = recipe
		@post_message = PostMessage.new
	end

end
