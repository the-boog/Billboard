class SongsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  before_action :set_artist, except: [:show]

  def index
    @songs = Song.all
  end

  def show 
  end

  def edit
    render partial: "form"
  end

  def update
    if @song.update(song_params)
      redirect_to artist_songs_path
    else
      render :edit
    end
  end

  def new
    
    @song = @artist.songs.new
    
    render partial: "form"
    
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to artist_songs_path
    else
      render :new
    end
  end

  def destroy
    @song.destroy
    redirect_to billbs_path
  end

private
  def set_params
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :genre, :artist_id)
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end

