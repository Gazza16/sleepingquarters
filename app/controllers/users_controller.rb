class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  # Get /users
  # Get /users.json
  def index
    @users = Users.all
  end
  # # GET /users/1
 # # GET /users/1.json
  def show
  end
  # get users/1/edit
  def edit
  end
  # # PATCH/PUT /users/1
  # # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json {render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
  def user_params
    params.require(:user).permit(:role, :user_name)
  end
end
