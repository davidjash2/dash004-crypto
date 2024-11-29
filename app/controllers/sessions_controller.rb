class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        authenticate(params[:user])
    end
end
