class Api::RecipeListController < ApplicationController
  def index
    render json: [1, 2, 3]
  end
end