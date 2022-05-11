Rails.application.routes.draw do
  resources :courses
  resources :students

  get 'sign_up', to: "registrations#new"
  get "sign_up", to: "registrations#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'home/index'
  #get 'results/result'
  get 'home/about'
  #get '/result'=>'results#result'
  get 'checkres/checkresult'


  root "home#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
