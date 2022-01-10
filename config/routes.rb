# as = name
Rails.application.routes.draw do
  root "pages#home"
  get "/about", to: "pages#about"
  resource :article, only: [:show]
  get "/article/:id", to: "articles#detail", as: 'articleDetail'
end
