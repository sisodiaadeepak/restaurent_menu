# frozen_string_literal: true

class DishesController < ApplicationController
  before_action :set_dish, only: %i[show edit update destroy]

  # GET /dishes
  def index
    @courses = Course.eager_load(:dishes)
  end

  # GET /dishes/1
  def show
    redirect_to :edit_dish
  end

  # GET /dishes/new
  def new
    @course = Course.find(params[:course])
    @dish = @course.dishes.new
  end

  # GET /dishes/1/edit
  def edit; end

  # POST /dishes
  def create
    @dish = Dish.new(dish_params)

    if @dish.save
      redirect_to :root, notice: 'Dish was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dishes/1
  def update
    if @dish.update(dish_params)
      redirect_to :root, notice: 'Dish was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dishes/1
  def destroy
    @dish.destroy
    redirect_to :root, notice: 'Dish was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dish
    @dish = Dish.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def dish_params
    params.require(:dish).permit(:name, :price, :description, :course_id)
  end
end
