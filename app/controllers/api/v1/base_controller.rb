class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session


  before_action :authenticate_user_from_token!

  def authenticate_user_from_token!

    # render json: {status: 'error'} and return
    authenticate_or_request_with_http_token do |token, options|
      user_email = options[:email].presence
      user = user_email && User.find_by_email(user_email)

      if user && Devise.secure_compare(user.auth_token, token)
        sign_in user, store: false
      end
    end
  end



end
