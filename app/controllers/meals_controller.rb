class MealsController < ApplicationController
    def index 
        @meals = Meal.all
    end

    def new
        @allFoods = Food.all
    end

    def create
        @meals = []

        @meals.append(Meal.new({food_id: params[:food1]}))
        @meals.append(Meal.new({food_id: params[:food2]}))
        @meals.append(Meal.new({food_id: params[:food3]}))
        @meals.append(Meal.new({food_id: params[:food4]}))
        @meals.append(Meal.new({food_id: params[:food5]}))
        @meals.append(Meal.new({food_id: params[:food6]}))
        @meals.append(Meal.new({food_id: params[:food7]}))
        @meals.append(Meal.new({food_id: params[:food8]}))
        @meals.append(Meal.new({food_id: params[:food9]}))
        @meals.append(Meal.new({food_id: params[:food10]}))
        
        @meals.each do |meal|
            meal.save
        end

        redirect_to action: 'index'
    end

    def edit 
    end

    def update 
    end
end