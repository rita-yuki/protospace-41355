class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if user_signed_in?
      @name = current_user.name
    else
      @name = "" 
    end
    @prototypes = @user.prototypes
  end
end