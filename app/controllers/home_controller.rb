class HomeController < ApplicationController
  before_action :redirect_nutritionist

  def index
  end

  private
  def redirect_nutritionist
    return redirect_to app_root_path if user_signed_in?
    return redirect_to nutritionists_root_path if nutritionist_signed_in?
  end
end
