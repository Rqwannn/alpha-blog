# as = name
Rails.application.routes.draw do
  root "pages#home"
  get "/about", to: "pages#about"
  resources :articles, only: [:show, :index]
  # get "/article/:id", to: "articles#detail", as: 'detail_article'
end
