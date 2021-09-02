class UserController < ApplicationController
  def read
    @user_id = params[:user_id]
    @user = User.find(@user_id)
    @posts = @user.posts
    render 'read2'
  end
end
