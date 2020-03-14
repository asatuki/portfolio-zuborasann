class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def update
		@recipe = Recipe.find(params[:id])
		if @recipe.update(recipe_params)
		   flash[:notice] = "レシピの更新に成功しました"
		   redirect_to recipe_show_path(@recipe)
		else
		   @recipe = Recipe.find(params[:id])
		   flash[:notice] = "レシピの更新に失敗しました"
		   render :edit
		end
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
		   flash[:notice] = "レシピの投稿に成功しました"
		   redirect_to recipes_path
	    else
	       @recipe = Recipe.new
	       flash[:notice] = "レシピの投稿に失敗しました"
	       render :new
	    end
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy
		redirect_to recipes_path
	end
end

    def recipe_params
    	params.require(:recipe).permit(:ingredient, :title, :process, :image)
    end
