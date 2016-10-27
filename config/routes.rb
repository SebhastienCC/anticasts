Rails.application.routes.draw do
  mount Payola::Engine => '/payola', as: :payola
  resources :subscriptions
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :courses do
    resources :lessons, :seats, :quizzes
  end


  root 'main#home'
  get 'dashboard', to: 'main#dashboard'
end
