Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "blog_posts#index"

  resources :blog_posts, except: [:destroy] do
    resources :comments, only: [:create]
  end
end
