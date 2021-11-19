class UsersController < ApplicationController
    
    def index
        @users = User.all
        render :index
    end

    def new
        #@user = User.find_by(username: params[:username])
        @user = User.new
        render :new
    end

    def show
        @user = User.find(params[:id])
        render :show
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_url(@user)
        else
            #redirect_to new_user_url
            redirect_to users_url
        end
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end
end