class FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)
    @user = User.find(params[:user_id])

    @follow.follower_id = current_user
    @follow.followed_id = @user

    if @follow.save
      redirect_to root_path, notice: 'user was sucessfully followed :)'
    else
      redirect_to root_path, status: :unprocessable_entity, notice: 'user wasnt followed :('
    end
  end

  private

  def contract_params
    params.require(:follow).permit(:user_id)
  end
end
