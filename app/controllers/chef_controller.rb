class ChefController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def show
  end

  def index
  end

  def new
  end

  def create
  end

  def destroy
  end
end
