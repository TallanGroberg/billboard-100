Rails.application.routes.draw do
  root 'arts#index'

  resources :arts do
    resources :songs
  end
  resources :billboards do
    resources :songs
  end
end
