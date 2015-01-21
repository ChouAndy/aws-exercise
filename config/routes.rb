Rails.application.routes.draw do
  resources :downloads

  root 'welcome#index'
end
