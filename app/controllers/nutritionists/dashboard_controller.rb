class Nutritionists::DashboardController < ApplicationController
  before_action :authenticate_nutritionist!

  def index
    @users = User.all
  end
end
