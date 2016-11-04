class UsersController < ApplicationController
    def new
      @user = User.new
    end

    def create
      @user = User.create(user_params)
      redirect_to index_path
    end

    def index
      @users = User.all
    end

    def show
    end

    private

    def user_params
      params.require(:user).permit(:image, :name, :age, :description)
    end

end
