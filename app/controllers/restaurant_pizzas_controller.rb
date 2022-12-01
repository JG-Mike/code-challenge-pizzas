class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :unproccessable_entity_method

    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza, status: :created
        
    end

private

def restaurant_pizza_params
    params.permit(:restaurant_id, :pizza_id, :price_id)
end

 def unproccessable_entity_method(e)
    render json: {error: e.record.error}, status: :unproccessable_entity_entity
    
 end
end
