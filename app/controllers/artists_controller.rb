class ArtistsController < ApplicationController
  def show
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def update

  end
end
