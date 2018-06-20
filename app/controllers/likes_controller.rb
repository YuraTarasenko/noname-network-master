class LikesController < ApplicationController

  def create
    Like.create(like_params)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    Like.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  def  modify
    if params[:like_action] == 'like'
      WallPost.find(params[:wall_post_id]).likes.create(liked: true)
    elsif params[:like_action] == 'dislike'
      WallPost.find(params[:wall_post_id]).likes.create(liked: false)
    end

    redirect_back(fallback_location: root_path)
  end

  private

  def like_params
    params.require(:like).permit(:liked, :user_id, :wall_post_id )
  end
end
