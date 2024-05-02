class ReviewsController < ApplicationController
  before_action :set_booking, only: %i[new create]
  # before_action :set_character, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to character_path(@booking.character)
      flash.alert = 'Thank you for your review'
    else
      render :dashboard, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_character
    @character = Character.find(params[:character_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id, :character_id)
  end
end
