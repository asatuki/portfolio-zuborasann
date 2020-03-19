class PostMessagesController < ApplicationController

	def create
		recipe = Recipe.find(params[:recipe_id])
		message = current_user.post_messages.new(post_message_params)
		message.recipe_id = recipe.id
		message.save
		redirect_to recipe_path(recipe)
	end

	private
	  def post_message_params
	  	  params.require(:post_message).permit(:message)
	  end
end
