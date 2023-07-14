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
  end

  def show
    @user = User.find(params[:id])
    @songs = Song.where(user_id: @user).take(3)

    @sounds = Song.where(user_id: @user)
  end
end
