class Users::TopController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def about
	end
end
