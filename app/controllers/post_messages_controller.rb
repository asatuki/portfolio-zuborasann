class PostMessagesController < ApplicationController

	def create
		recipe = Recipe.find(params[:recipe_id])
		message = current_user.post_messages.new(post_message_params)
		message.recipe_id = recipe.id
		message.save
		@recipe = recipe
		@post_message = PostMessage.new
	end

	def destroy
		message = PostMessage.find_by(id: params[:id])
		message.destroy
		@recipe = Recipe.find(params[:recipe_id])
		@post_message = PostMessage.new
	end

private
	def post_message_params
	  	params.require(:post_message).permit(:message)
	end

end
