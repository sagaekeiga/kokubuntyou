module Api
  module V1
    class UsersController < ApplicationController
    skip_before_filter :verify_authenticity_token

      def index
        @users = User.all
        render json: @users
      end
      
      def detail
         params = request.body.read
         logger.debug("params")
         logger.debug(params)
         logger.debug("params")
         @user = User.find_by(name: params)
         render json: @user
      end
        
    end
  end
end