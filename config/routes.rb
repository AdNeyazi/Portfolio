Rails.application.routes.draw do
  resources :about_contents
  get '/about', to: 'about_contents#show_first', as: 'about'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'home#index'
  resources :projects
end
