module Api
  module V1
    class Api::V1::ApplicationsController < ApplicationController
      before_action :set_application, only: %i[ show update destroy ]

      # GET /applications
      def index
        @applications = Application.all

        render json: ApplicationSerializer.new(@applications).serializable_hash[:data]
      end

      # GET /applications/1
      def show
        render json: @application
      end

      # POST /applications
      def create
        @application = Application.new(application_params)

        if @application.save
          render json: @application, status: :created
        else
          render json: @application.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /applications/1
      def update
        if @application.update(application_params)
          render json: @application
        else
          render json: @application.errors, status: :unprocessable_entity
        end
      end

      # DELETE /applications/1
      def destroy
        @application.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_application
          @application = Application.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def application_params
          params.require(:application).permit(:name, :email, :phone, :institute, :course, :domain, :goals, :unique_skill, :company_project, :resume)
        end
    end
  end
end
