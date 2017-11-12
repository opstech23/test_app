Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home' 
  get 'about', to: 'welcome#about'
  get 'welcome/login', to: 'welcome#login'
  get 'welcome/signup', to: 'welcome#signup'
  get 'welcome/contact', to: 'welcome#contact'
end
