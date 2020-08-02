class DaysMealsController < ApplicationController

  def create
    days_meal = DaysMeal.new(days_meal_params)
    days_meal.day = Day.find_by(date: params[:date], user:current_user)
    if days_meal.valid?
      days_meal.save
    end
    "/days/#{params[:date]}"
  end

  def destroy
    day = Day.find_by(date: params[:date], user: current_user)
    meal = Meal.find(params[:meal_id])
    day.meals.delete(meal.id)
    redirect_to "/days/#{params[:date]}"
  end
  private

    def days_meal_params
      params.require(:days_meal).permit(:meal_id)
    end
end
