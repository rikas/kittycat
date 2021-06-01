class CatsController < ApplicationController
  def index
    @cats = Cat.all.order(created_at: :desc)
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.save

    redirect_to cats_path
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update(cat_params)

    redirect_to cats_path
  end

  private

  # strong params
  def cat_params
    params.require(:cat).permit(:description, :color, :age, :claimed)
  end
end
