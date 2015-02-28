class UserController < ApplicationController
  def profile
    @user = current_user
    @reviews = Review.last(5)
  end
end
