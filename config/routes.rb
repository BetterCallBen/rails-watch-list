Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/new'
  get 'reviews/destroy'
  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
  resources :reviews, only: [:destroy]
end
