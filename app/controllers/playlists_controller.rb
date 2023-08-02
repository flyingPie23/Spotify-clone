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

  private

  def playlist_params
    params.require(:playlist).permit(:name, :photo)
  end
end
