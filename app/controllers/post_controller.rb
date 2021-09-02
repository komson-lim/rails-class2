class PostController < ApplicationController
  def create
    @msg = params[:msg]
    @user_id = params[:user_id]
    @post = Post.create(msg: @msg, user_id: @user_id)
    render 'create2'
  end
end
