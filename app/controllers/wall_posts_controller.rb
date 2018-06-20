class WallPostsController < ApplicationController

  def create
   # Example params --
   # {
   #      "wall_post"=>{"user_id"=>"2", "body"=>"my message"}
   # }

    # Method 1
    # @user = User.find(params[:wall_post][:user_id])
    # @wall_post = @user.wall_posts.create(body: params[:wall_post][:body])

    # Method 2 (recommended)
    WallPost.create(wall_post_params)

    redirect_back(fallback_location: root_path)
  end

  def destroy
    WallPost.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  def like
    WallPost.find(params[:id]).likes.create(liked: true)
    redirect_back(fallback_location: root_path)
  end

  def dislike
    WallPost.find(params[:id]).likes.create(liked: false)
    redirect_back(fallback_location: root_path)
  end

  def search
    @wall_posts = WallPost.where(["body LIKE ?","%#{params[:search]}%"])
    #render ""
    #redirect_back(fallback_location: root_path)
  end

  private

  def wall_post_params
    params.require(:wall_post).permit(:body, :user_id)
  end

end
