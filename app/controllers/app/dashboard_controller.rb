class App::DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @meal_plan = current_user.meal_plans.find_or_create_by(planned_for: meal_date)
    @meal_plan.prefill_meals
  end

  private

  def meal_date
    params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
