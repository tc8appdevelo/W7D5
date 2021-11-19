class UsersController < ApplicationController
    
    def index
        @users = User.all
        render :index
    end

    def create
        
    end



    def user_params
        params.require(:user).permit(:username, :password)
    end
end