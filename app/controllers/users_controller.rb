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


    @sounds = Song.where(user_id: @user)

    @playlist = Playlist.new
    @playlists = Playlist.where(user_id: current_user)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to dashboard_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :pfp)
  end

end
