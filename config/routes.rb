Rails.application.routes.draw do
 resources :billbs do
  resources :songs
 end
 resources :artists do
  resources :songs
 end
end
