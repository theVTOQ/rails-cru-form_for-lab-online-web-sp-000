class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.save
  end

  def create
    @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def update
    @song = song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end
end
