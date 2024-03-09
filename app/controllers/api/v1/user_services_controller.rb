module Api
  module V1
    class Api::V1::UserServicesController < ApplicationController
      before_action :set_user_service, only: %i[show update destroy]

      # GET /user_services
      def index
        @user_services = UserService.all

        render json: @user_services
      end

      # GET /user_services/1
      def show
        render json: @user_service
      end

      # POST /user_services
      def create
        @user_service = UserService.new(user_service_params)

        if @user_service.save
          render json: @user_service, status: :created, location: @user_service
        else
          render json: @user_service.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /user_services/1
      def update
        if @user_service.update(user_service_params)
          render json: @user_service
        else
          render json: @user_service.errors, status: :unprocessable_entity
        end
      end

      # DELETE /user_services/1
      def destroy
        @user_service.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_user_service
        @user_service = UserService.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def user_service_params
        params.require(:user_service).permit(:career_goals, :unique_qualities, :position, :resume, :exciting_project,
                                             :user_id, :service_id)
      end
    end
  end
end
