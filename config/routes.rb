Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "search", to: "tv_shows#search"
  post "update_favourites", to: "tv_shows#update_favourites"
  root "tv_shows#index"
end
