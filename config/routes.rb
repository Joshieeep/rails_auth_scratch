Rails.application.routes.draw do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    resource :registration
    resource :session
    resource :password_reset
    resource :password


  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

   # Defines the root path route ("/")
   root "main#index"
end
