class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :update, :destroy]

  # GET /foods
  def index
    # Lets get the name from the parameters
    name = params[:name]

    # If name is not nil or false
    if name.present?
      # Exact match only
      # @foods = Food.where(name: name)

      # Partial match
      @foods = Food.where("name ilike ?", "%#{name}%")
    else
      @foods = Food.all
    end

    render json: @foods
  end

  # GET /foods/1
  def show
    render json: @food
  end

  # POST /foods
  def create
    @food = Food.new(food_params)

    if @food.save
      render json: @food, status: :created, location: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foods/1
  def update
    if @food.update(food_params)
      render json: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foods/1
  def destroy
    @food.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_food
    @food = Food.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def food_params
    params.require(:food).permit(:name, :category, :calories, :price, :rating, :expires_on, :gluten_free)
  end
end
