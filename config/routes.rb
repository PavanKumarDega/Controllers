Rails.application.routes.draw do
  resources :schools
resources :rooms
  get 'schools/index'
  get 'schools/show'
  get 'schools/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
