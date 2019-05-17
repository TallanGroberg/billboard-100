class SongsController < ApplicationController
    before_action :set_art
    before_action :set_song, only: [:show, :edit, :update, :destroy]
    # before_action set_bd:


  def index
    @songs = @art.songs
  end

  def show
  end

  def new
    @song = @art.songs.new
    render partial: 'form'
  end

  def create
    @song = @art.songs.new(song_params)
    if @song.save
      redirect_to art_songs_path
    else
      render partial: 'form'
    end
  end

    def edit
    end

    def update
      if @song.update(song_params)
        redirect_to art_song_path(@art, @song)
      else
        render :edit
    end
  end
  def destroy
    @song.destroy
    redirect_to art_songs_path(@art)
  end


  private
  def set_art
    @art = Art.find(params[:art_id])
  end

  def set_song
    @song = Song.find(params[:id])


  end
  def song_params
    params.require(:song).permit(:name)
  end
  # def set_bd
  #   @bd = Billboard.find(params[:id])
end
