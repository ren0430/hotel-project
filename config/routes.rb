Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :hotels do
  resources :reviews
end
get 'contacts/new', to: 'contacts#new', as: 'new_contact'
post 'contacts', to: 'contacts#create'
get 'contacts/:id', to: 'contacts#show', as: 'contact'
#get 'hotels', to: 'hotels#index'
#get 'hotels/:id', to: 'hotels#show', as: 'hotel'
root 'hotels#index'
end
