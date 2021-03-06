class FavsController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.fav(micropost)
    flash[:success] = "投稿をお気に入りにしました。"
    redirect_to :root
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfav(micropost)
    flash[:success] = "投稿のお気に入りを解除しました。"
    redirect_to :root
  end
end
