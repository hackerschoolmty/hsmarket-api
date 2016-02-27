class Api::V1::ManagersController < Api::V1::BaseController
  before_action :set_shop
  before_action :ensure_admin_presence!, only: [:create]
  def index
    render json: User.with_role(:manager, @shop)
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.add_role(:manager, @shop)
      render json: @user, serializer: UserSerializer, root: 'user'
    else
      render json: {errors: @user.errors}, status: :error, root: 'user'
    end
  end

  private

    def ensure_admin_presence!
      unless current_user.has_role?(:admin, @shop)
        render json: { message: 'Unauthorized' } and return
      end
    end

    def set_shop
      @shop = Shop.find(params[:shop_id])
    end

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
