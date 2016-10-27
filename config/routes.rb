Rails.application.routes.draw do

  devise_for :users
  mount Payola::Engine => '/payola', as: :payola
  resources :subscriptions

  resources :courses do
    resources :lessons, :seats, :quizzes
  end


  root 'main#home'
  get 'dashboard', to: 'main#dashboard'
  
end
