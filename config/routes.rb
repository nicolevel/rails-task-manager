Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Read all tasks
  get 'tasks', to: 'tasks#index', as: :tasks

  # Create one task (2 requests)
  # 1. get empty form
  # 2. Request to post the params
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # Read one task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Update one task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # Delete one task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end
