class SongsController < ApplicationController
  before_action :set_song, only: [:show, :destroy]
  
  def index
    @songs = Songs.all
  end

  def show
  end

  def new
    @song = Songs.new
  end

  
  def create
    @song = Song.new(user_params)
    if @song.save
      redirect_to @song
    else
     render :new
    end
  end
  
  def destroy
    @song.destroy
    redirect_to songs_path
  end
  
  private

  def set_song
    @song = Song.find(params[:id])
  end

  def set_song
    params.require(:song).permit(:name)
  end
end