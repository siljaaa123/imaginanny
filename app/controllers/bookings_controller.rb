class BookingsController < ApplicationController
  before_action :set_user, only: %i[new create]
  before_action :set_character, only: %i[new create]
  before_action :set_booking, only: %i[destroy edit update]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.character = @character
    @booking.user = @user
    if @booking.save
      flash.alert = 'Your Imaginanny has been reserved!'
      redirect_to character_path(@character)
    else
      render 'characters/show', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to :dashboard, notice: 'Booking was successfully updated.'
    else
      render :dashboard, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def set_user
    @user = current_user
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_character
    @character = Character.find(params[:character_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :character_id, :user_id, :start_time, :end_time)
  end
end
