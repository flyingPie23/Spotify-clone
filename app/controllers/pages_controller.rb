class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @users = User.where(artist: true).sample(3)
    @songs = Song.all.sample(6)

    @artists = User.where(artist: true)
    @tracks = Song.all

    @playlist = Playlist.new
    @playlists = Playlist.where(user_id: current_user)
  end

  def dashboard
    @user = current_user
    @songs = Song.where(user_id: @user)

    @song_new = Song.new

    @top = @songs.sample(1)

    @playlist = Playlist.new
    @playlists = Playlist.where(user_id: current_user)

    @followers = Follower.where(follow: @user.id)


    @followers_last_week = period_filter(1.week.ago..Time.now)
    @followers_last_month = period_filter(1.month.ago..Time.now)
    @followers_last_year = period_filter(1.year.ago..Time.now)
  end

  private

  def period_filter(period)
    Follower.where(follow: @user.id, created_at: period)
  end
end
