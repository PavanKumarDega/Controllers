Rails.application.routes.draw do
  resources :schools
  resources :subjects
  resources :teachers
  resources :books
  resources :students
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'rooms#index'
end
