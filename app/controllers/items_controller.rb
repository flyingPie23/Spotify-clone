class ItemsController < ApplicationController
  def create
    @playlist = Playlist.find(params[:playlist_id])


    @item = Item.new(item_params)
    @item.playlist = @playlist
    @item.song = Song.find(params[:song_id])

    if @item.save
      redirect_to playlist_path(@playlist), notice: 'Song was added to the playlist succesfully :)'
    else
      render :new, status: :unprocessable_entity, notice: 'Song couldnt be added to the playlist :('
    end
  end

  def new
    @item = Item.new
  end

  private

  def item_params
    params.require(:items).permit(:playlist, :song)
  end
end
