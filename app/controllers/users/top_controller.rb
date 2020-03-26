class Users::TopController < ApplicationController

	def index
		@recipes = Recipe.all.order(count: "desc")
	end

	def about
	end
end
