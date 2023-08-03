class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
    @user = User.find(@song.user_id)

    @songs = Song.where(user_id: @user).sample(3)
    @users = User.all.sample(3)

    @playlist = Playlist.new
    @playlists = Playlist.where(user_id: current_user)
  end
end
