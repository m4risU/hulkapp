class App::AllergiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @allergies = Allergy.all
  end

  def create
    current_user.update_attributes(user_params)
    redirect_back fallback_location: app_root_path
  end

  private
  def user_params
    params.require(:user).permit(allergy_ids: [])
  end
end
