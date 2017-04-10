class SongsController < ApplicationController

  def new
    @playlist = Playlist.find(params[:playlist_id])
    @song = Song.new
  end

  def create
    @playlist = Playlist.find(params[:playlist_id])
    @song = Song.new(song_params)
    if @song.save
      @playlist.songs << @song
      redirect_to playlist_path(@playlist)
    else
      render :new
    end
  end

  private

  def song_params
    params.require(:song).permit(:artist, :title, :url)
  end

end
