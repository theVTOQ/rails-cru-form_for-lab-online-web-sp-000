class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.create(params.require(:song).permit(:name, :bio))
    redirect_to song_path(@song)
  end

  def update
    @song = song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :bio))
    redirect_to song_path(@song)
  end
end
