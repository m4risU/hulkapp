class Nutritionists::DashboardController < ApplicationController
  before_action :authenticate_nutritionist!

  def index
  end
end
