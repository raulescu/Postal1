Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'

  resources :posts do
    resources :likes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'user_posts/:user_id' => 'posts#user', as: :user_posts
end
