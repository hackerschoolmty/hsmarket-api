Rails.application.routes.draw do

  devise_for :users
  # Change the line below to handle every request through a subdomain
  #namespace :api, constraints: { subdomain: 'api' }, path: '/' do
  namespace :api, path: '/api' do
    api_version(module: "V1", header: {name: "Accept",
                                             value: "application/vnd.hsmarket.com+json; version=1"},
                                             defaults: {format: :json}, default: true) do

      resources :users, only: [:create, :update]
    end
  end

end
