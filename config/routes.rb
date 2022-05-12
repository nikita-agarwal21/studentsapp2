Rails.application.routes.draw do
  devise_for :admins
  resources :courses
  resources :students
  resources :results
  
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'home/index'
  #get 'results/result'
  get 'home/about'
  #get '/result'=>'results#result'
  
  get 'checkres/checkresult'
 
 
 
  get 'checkres/check'



  root "home#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
