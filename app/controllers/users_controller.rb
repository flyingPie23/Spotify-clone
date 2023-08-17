class UsersController < ApplicationController
  def index
    @songs = Song.all
    ids = []

    @songs.each do |song|
      ids << song.user_id
    end

    ids = ids.uniq

    @users = []
    ids.each do |id|
      @users << User.find(id)
    end

    @playlist = Playlist.new
    @playlists = Playlist.where(user_id: current_user)
  end

  def show
    @user = User.find(params[:id])
    @songs = Song.where(user_id: @user).take(3)

    @follow = Follow.new

    @sounds = Song.where(user_id: @user)

    @playlist = Playlist.new
    @playlists = Playlist.where(user_id: current_user)
  end

end
