Rails.application.routes.draw do
  resources :divisions do
    resources :employees
  end
end
