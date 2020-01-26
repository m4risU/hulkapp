class App::MealPlansController < ApplicationController
    before_action :authenticate_user!

    def clear
      @meal_plan = current_user.meal_plans.find(params[:id])
      planned_for = @meal_plan.planned_for
      @meal_plan.clear
      redirect_to app_root_path(date: planned_for)
    end
  end
