class Admins::TopController < ApplicationController

	def index
		@recipes = Recipe.all
	end
end
