class CharactersController < ApplicationController
  before_action :set_user, only: %i[new create]

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.user = @user
    if @character.save
      redirect_to character_path(@character)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @character = Character.find(params[:id])
    @booking = Booking.new
  end

  private

  def set_user
    @user = current_user
  end

  def character_params
    params.require(:character).permit(:category, :description, :character_name, :price, :user_id)
  end
end
