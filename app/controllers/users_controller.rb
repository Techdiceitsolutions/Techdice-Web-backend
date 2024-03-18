class UsersController < ApplicationController
  def index
    if current_admin
      render json: User.all
    else
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end
end
