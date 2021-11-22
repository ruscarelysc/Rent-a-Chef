class ChefController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_chef, only: [:show, :destroy]

  def index
    @chefs = Chef.all
  end

  def show
  end

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    if @chef.save
      redirect_to chef_path(@chef)
    else
      render "new"
    end
  end

  def destroy
    @chef.destroy
    redirect_to chefs_path(@chef)
  end

  private

  def set_chef
    @chef = Chef.find(params[:id])
  end

  def chef_params
    params.require(:chef).permit(:name, :category, :price)
  end
end
