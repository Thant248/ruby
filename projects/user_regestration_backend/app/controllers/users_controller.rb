class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show 
    render json: @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      render :show, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      render :show, status: :ok, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy!
  end

  # GET /search?address=:address
  def search 
    find_users
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Find users by address
    def find_users
      @users = User.where(address: params[:address])
      if @users.any?
        render json: @users
      else
        render json: { error: 'Users not found for the given address' }, status: :not_found
      end
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:fname, :lname, :age, :email, :phone, :address)
    end
end
