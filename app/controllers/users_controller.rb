class UsersController < ApplicationController
  def index
    @songs = Song.all
    placeholders = []

    @songs.each do |song|
      placeholders << song.user_id
    end

    placeholders = placeholders.uniq

    @users = []
    placeholders.each do |placeholder|
      @users << User.find(placeholder)
    end
  end
end
