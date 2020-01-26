class App::MealsController < ApplicationController
  before_action :authenticate_user!

  def add_ingredient_amount
    @meal = Meal.find(params[:id])
    @meal_plan = @meal.meal_plan
    @ingredient_amount = IngredientAmount.new
  end

  def default
    @meal = Meal.find(params[:id])
    @meal_plan = @meal.meal_plan
  end

  def search_ingredient
    @meal = Meal.find(params[:id])
    @ingredients = Ingredient.by_tokens(params[:query])
    respond_to do |format|
      format.html { render layout: false }
      format.js {}
    end
  end
end
