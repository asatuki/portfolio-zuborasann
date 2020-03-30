class Users::TopController < ApplicationController

	def index
	end

	def rank
		@recipes = Recipe.all.order(count: "desc")
	end

end
