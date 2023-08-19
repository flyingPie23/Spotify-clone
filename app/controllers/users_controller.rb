class UsersController < ApplicationController
  def index
    @users = User.all

    if params[:query].present?
      @users = @users.where("username ILIKE ?", "%#{params[:query]}%")
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
