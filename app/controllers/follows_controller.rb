class FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)
    @follow.followed_id = User.find(params[:follow][:followed_id]).id
    @follow.follower_id = User.find(params[:follow][:follower_id]).id

    if @follow.save
      redirect_to root_path, notice: 'user was sucessfully followed :)'
    else
      redirect_to root_path, status: :unprocessable_entity, notice: 'user wasnt followed :('
    end
  end

  private

  def follow_params
    params.require(:follow).permit(:followed_id, :follower_id)
  end
end
