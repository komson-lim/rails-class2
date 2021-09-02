class UserController < ApplicationController
  def read
    @valid_id = true
    @user_id = params[:user_id]
    @user = User.find(@user_id)
  rescue ActiveRecord::RecordNotFound
    @valid_id = false
  else
    @posts = @user.posts
  ensure
    render 'read2'
  end
end
