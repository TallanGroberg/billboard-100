Rails.application.routes.draw do

  root 'static_page#home'

  resources :arts do
    resources :songs
  end
  resources :billboards do
    resources :songs
  end
end
