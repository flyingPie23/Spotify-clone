class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @users = User.all.sample(3)
    @songs = Song.all.sample(6)
  end
end
