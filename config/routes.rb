Rails.application.routes.draw do
  devise_for :users
  resources :votes
  resources :project_tasks
  resources :projects
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home' 
  get 'about', to: 'welcome#about'
  get 'login', to: 'welcome#login'
  get 'signup', to: 'welcome#signup'
  get 'contact', to: 'welcome#contact'
  post 'login', to: 'welcome#login'
  post 'signup', to: 'welcome#signup'
end
