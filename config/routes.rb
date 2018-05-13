Rails.application.routes.draw do
  namespace :admin do
    resources :lessons
    resources :teachers
    resources :week_days

    root to: "lessons#index"
  end

  namespace :api, format: :json do
    resources :lessons
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
