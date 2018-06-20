class UsersController < ApplicationController

  before_action :set_user, only: [ :show, :edit, :update ]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: 'Пользователь был успешно создан.'
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to @user ,notice: 'Пользователь был успешно обновлён.'
    else
      render :edit
    end
  end

  def search
    @users = User.where("first_name LIKE ?", "%#{params[:query]}%")
    render 'index'
  #@users = User.where(["first_name LIKE ?","%#{params[:search]}%"])
  #  debugger
    #@q = "%#{params[:query]}%"
    #@users = User.joins(:users).where(:users => {:id => @users.map{|x| x.id}}).distinct
    #@users = User.all


   #@users = User.where("name LIKE ?", "%#{params[:first_name]}" )
   #binding.pry



    #redirect_back(fallback_location: root_path)

  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to admin_users_url, notice: 'Пользователь был успешно удалён.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:password, :password_confirmation, :image)
  end
end
