Rails.application.routes.draw do
  root to: 'divisions#index'

  resources :divisions do
    collection do
      get 'test'
    end
    resources :employees
  end

  resources :projects do
    resources :employees

  end

  resources :employees do
    member do
      post 'add_project'
    end
  end

end