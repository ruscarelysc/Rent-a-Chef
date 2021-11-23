class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :destroy]
  before_action :set_booking, only: [:new, :create]

  def index
    @reviews = Review.all
  end

  def show
  end


  def new
     @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to chef_path(@booking.chef)
    else
      render "new"
    end
  end

  def destroy
    @review.destroy
    redirect_to chef_bookings_path(@review.booking.chef)
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
