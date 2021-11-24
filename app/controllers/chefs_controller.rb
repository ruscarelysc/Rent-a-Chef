class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_chef, only: [:show, :destroy, :edit, :update]

  def home
    @chefs = Chef.all
  end

  def index
    @chefs = Chef.all
  end

  def show
  end

  def edit
  end

  def update
    @chef.update(chef_params)
    redirect_to chef_path(@chef.id)
  end

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    @chef.user = current_user
    if @chef.save
      redirect_to chefs_path(@chef)
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
    params.require(:chef).permit(:name, :category, :price, :description)
  end
end
