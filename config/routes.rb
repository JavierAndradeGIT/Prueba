Rails.application.routes.draw do
  resources :tasks
  root "tasks#index"

  get "completed_tasks", to: "tasks#completed_tasks"

  get "incompleted_tasks", to: "tasks#incompleted_tasks"

  patch "toggle_complete", to: "tasks#toggle_complete"
end
