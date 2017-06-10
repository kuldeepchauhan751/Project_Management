Rails.application.routes.draw do


  resources 'users'
  resources 'sessions'
  resources 'projects'
  resources 'tasks'

  root 'sessions#new'

  get 'login' =>'sessions#new' 
  get 'logout'=>'sessions#destroy'
  # get 'tasks/new'

  # get 'tasks/create'

  # get 'tasks/show'

  # get 'tasks/index'

  # get 'projects/new'

  # get 'projects/create'

  # get 'projects/show'

  # get 'projects/index'

  # get 'sessions/create'

  # get 'sessions/destroy'

  # get 'sesssions/create'

  # get 'sesssions/destroy'

  # get 'users/new'

  # get 'users/create'

  # get 'users/show'

  # get 'users/index'
 
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
