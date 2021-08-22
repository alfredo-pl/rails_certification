Rails.application.routes.draw do
  get 'dashboard/home'
  devise_for :users
  resources :courses
  resources :students

  root 'dashboard#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
