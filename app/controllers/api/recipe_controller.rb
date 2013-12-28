class Api::RecipeController < Api::BaseController
  before_action :check_owner, only: [:show, :update, :destroy]

  def index
    render json: current_user.recipes
  end

  def show
    render json: recipe
  end

  private

  def check_owner
    permission_denied if current_user != recipe.owner
  end

  def recipe
    @recipe ||= Recipe.find(params[:id])    
  end
  
  def default_serializer_options
    {
      root: false
    }
  end

end