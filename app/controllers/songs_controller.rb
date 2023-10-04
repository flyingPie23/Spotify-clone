class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
    @user = User.find(@song.user_id)

    @songs = Song.where(user_id: @user).sample(3)
    @users = User.all.sample(3)

    @playlist = Playlist.new
    @playlists = Playlist.where(user_id: current_user)
  end

  def create
    @song_new = Song.new(song_params)
    @song_new.user = current_user

    if @song_new.save
      redirect_to song_path(@song_new), notice: "#{@song_new.title} was released :)"
    else
      flash[:alert] = 'something wrong happened :('
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :cover, :mp3)
  end
end
