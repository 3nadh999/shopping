Rails.application.routes.draw do
  resources :categories
  get 'welcome/index'

  devise_for :users , :controllers => { registrations: 'registrations' }
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

end
