namespace :api do
    namespace :v1 do
      resources :organizations
      scope :users, module: :users do
        post '/', to: "registrations#create", as: :user_registration
      end
      resources :posts
      resources :post_levels

      namespace :android do
        resources :posts
      end
    end
  end

  scope :api do
    scope :v1 do
      use_doorkeeper do
        skip_controllers :authorizations, :applications, :authorize_applications
    end
  end
end