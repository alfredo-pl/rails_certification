Rails.application.routes.draw do
  get 'dashboard/home', to: 'dashboard#home'
  get 'certification/:run' , to: 'dashboard#student_certification', as:'certification', :defaults=>{ :format => 'pdf'}
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :courses
  resources :students

  root to: 'dashboard#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
