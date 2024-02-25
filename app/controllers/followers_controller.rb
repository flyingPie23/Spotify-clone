class FollowersController < ApplicationController
  def create
    @follow = Follower.create(follower_params)
    @user = User.find(params[:user_id])

    @follow.follow = @user.id
    @follow.user_id = current_user.id

    if @follow.save
      redirect_to user_path(@user), notice: "you are following: #{@user.username}"
    else
      flash[:alert] = 'something wrong happened :('
    end
  end

  def destroy
    @follow = Follower.find(params[:id])
    @follow.destroy

    redirect_to request.referrer, notice: "you are not following this artist anymore"
  end

  private

  def follower_params
    params.require(:follower).permit(:user_id, :follow)
  end
end
