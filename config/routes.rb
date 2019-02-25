Rails.application.routes.draw do
  devise_for :users
  root "billbs#index"
 resources :billbs do
  resources :songs
 end
 resources :artists do
  resources :songs
 end
end
