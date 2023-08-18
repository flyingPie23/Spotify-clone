class PlaylistsController < ApplicationController

  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.user = current_user

    if @playlist.save
      redirect_to root_path, notice: 'playlist was sucessfully created :)'
    else
      redirect_to root_path, status: :unprocessable_entity, notice: 'playlist wasnt created :('
    end
  end

  def show
    @playlist_show = Playlist.find(params[:id])


    @playlist = Playlist.new
    @playlists = Playlist.where(user_id: current_user)

    @item = Item.new

    @items = Item.where(playlist_id: @playlist_show)

    @songs = Song.all

    if params[:query].present?
      sql_subquery = <<~SQL
        songs.title ILIKE :query
        OR users.username ILIKE :query
      SQL
      @songs = @songs.joins(:user).where(sql_subquery, query: "%#{params[:query]}%")
    end


  end


  private

  def playlist_params
    params.require(:playlist).permit(:name, :photo)
  end
end
