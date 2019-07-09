Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  resources :tasks

  # get "tasks", to: "tasks#index"
  #  #to create and update it
  # get "tasks/new", to: "tasks#new", as: "new_task"
  # post "tasks", to: "tasks#create"

  # #If I go to "tasks/:id url > it will link to tasks/show"
  # get "tasks/:id", to: "tasks#show", as: "task"
  # get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  # patch "tasks/:id", to: "tasks#update"

  # delete "tasks/:id", to: "tasks#destroy"
end
