class CharactersController < ApplicationController
  before_action :set_user, only: %i[new create]

  def index
    @characters = Character.all
    filter_characters
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
  end

  private

  def set_user
    @user = current_user
  end

  def character_params
    params.require(:character).permit(:category, :description, :character_name, :price, :user_id)
  end

  def filter_characters
    if params[:filter].present?
      @characters = @characters.where(category: params[:filter][:category]) if params[:filter][:category].present?
      @characters = @characters.where("price <= ?", params[:filter][:max_price]) if params[:filter][:max_price].present?
    end
  end
end
