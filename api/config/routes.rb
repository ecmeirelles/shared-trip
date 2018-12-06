Rails.application.routes.draw do
  get 'welcome/index'

  resources :trips do
    resources :users do
      resources :expenses
    end
    resources :destination
  end

  root 'welcome#index'
end
