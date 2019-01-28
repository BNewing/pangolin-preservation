Rails.application.routes.draw do
  get 'welcome/index'

  resources :gifs

  root 'welcome#index'
end
