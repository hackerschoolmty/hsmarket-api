class Api::V1::ShopsController < Api::V1::BaseController
  before_action :set_shop, except: [:index]
  def show
    render json: @shop
  end

  def update
  end
  private
    def set_shop
      @shop = Shop.find(params[:id])
    end
end
