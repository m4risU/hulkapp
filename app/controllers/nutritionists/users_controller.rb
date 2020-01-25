class Nutritionists::UsersController < ApplicationController
  before_action :authenticate_nutritionist!

  def become
    # return unless current_user.is_an_admin?
    bypass_sign_in(User.find(params[:id]))
    redirect_to root_url # or user_root_url
  end
end
