class MealsController < ApplicationController
  def index
    @meals = Meal.all
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to meals_path
    else
      render :index
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :description, :price)
  end
end
