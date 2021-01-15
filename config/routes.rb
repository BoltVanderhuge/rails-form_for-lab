Rails.application.routes.draw do
  resources :school_classes
  resources :students

  # get '/students', to: 'students#index', as: 'students' 
  # get '/students/new', to: 'students#new', as: 'new_student'
  # post '/students', to: 'students#create'
  # get '/students/:id', to: 'students#show', as: 'student'
  # get '/students/:id/edit', to: 'students#edit', as: 'edit_student'
  # patch '/students/:id', to: 'students#update' 
  # delete 'students/:id', to: 'students#destroy'
end
