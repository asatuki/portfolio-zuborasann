class SearchController < ApplicationController

   def index
   	   @target = params[:target]
   	   if @target == "recipe"
   	   	  @recipes = Recipe.search(params[:search])
   	   end
   end

end
