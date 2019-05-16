Rails.application.routes.draw do
  root 'songs#index'

  resources :arts do
    resources :songs
  end
end
