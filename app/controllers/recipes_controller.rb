class RecipesController < ApplicationController
before_action :authenticate_user!, except: [:show, :destroy]

	def index
		@recipes = Recipe.all
	end

	def show
		@recipe = Recipe.find(params[:id])
		@post_message = PostMessage.new
	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def update
		@recipe = Recipe.find(params[:id])
		if @recipe.update(recipe_params)
			flash[:notice] = "レシピの更新に成功しました"
			redirect_to recipe_path(@recipe)
		else
			flash[:notice] = "レシピの更新に失敗しました"
			render :edit
		end
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)
		@recipe.user_id = current_user.id
		if @recipe.save
			flash[:notice] = "レシピの投稿に成功しました"
			redirect_to recipes_path
		else
			flash[:notice] = "レシピの投稿に失敗しました"
			render :new
		end
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy
		if user_signed_in?
			redirect_to root_path
		else admin_signed_in?
			redirect_to admins_top_path
		end
	end

	def recipe_params
		params.require(:recipe).permit(:ingredient, :title, :process, :image, :user_id)
	end
end
