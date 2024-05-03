class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @random_characters = []
    8.times do
      character = Character.all.sample
      @random_characters << {
        character_name: character.character_name,
        description: character.description,
        category: character.category,
        price: character.price,
        photo: character.photo.url
      }
    end
  end
end
