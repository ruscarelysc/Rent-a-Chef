class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]
  before_action :set_chef, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.chef = @chef
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "new"
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_chef
    @chef = Chef.find(params[:chef_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :chef_id)
  end
end
