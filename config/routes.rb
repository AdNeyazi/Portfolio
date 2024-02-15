Rails.application.routes.draw do
  resources :about_contents
  get '/about', to: 'about_contents#show_first', as: 'about'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'home#index'
  resources :projects
  # resources :resumes
  get '/resume', to: 'resumes#show', id: 1, as: 'resume'
end
