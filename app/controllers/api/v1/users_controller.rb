class Api::V1::UsersController < Api::V1::BaseController
  skip_before_action :authenticate_user_from_token!, only: [:create]

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, serializer: SessionSerializer, root: 'user'
    else
      render json: {errors: @user.errors}, status: :error, root: 'user'
    end
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(
        :email,
        :username,
        :name,
        :password,
        :password_confirmation
      )
    end
end
