class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @item.playlist = Playlist.find(params[:item][:playlist_id])
    @item.song = Song.find(params[:item][:song_id])


    if @item.save
      redirect_to playlist_path(@item.playlist), notice: "#{@item.song.title} was sucessfully added to #{@item.playlist.name} :)"
    else
      redirect_to root_path, status: :unprocessable_entity, notice: 'something went wrong :('
    end
  end

  private

  def item_params
    params.require(:item).permit(:playlist_id, :song_id)
  end
end
