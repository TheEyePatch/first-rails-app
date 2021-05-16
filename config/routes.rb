Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  post '/articles' => 'articles#create', as: 'create_article'
  get '/articles/:id' => 'articles#show', as: 'show_article'
  delete '/articles/:id' => 'articles#destroy', as: 'delete_article'
  get '/articles/edit/:id' => 'articles#edit', as: 'edit_article'
  put '/articles/:id' => 'articles#update', as: 'update_article'
  
  # root "articles#index"
  # put '/articles' => 'articles#update', as: 'update_article'
  # resources :articles
end
