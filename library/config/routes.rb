Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get '/books' => "books#index", as: 'books'#books_path
# get '/books/new' => "books#new", as: 'new_book'
# post '/books' => "books#create"
# get '/books/:id/edit' => "books#edit", as:'edit_book'
# patch '/books/:id' => "books#update"
# get '/books/:id' => "books#show", as: 'book' #book_path(book)
# delete '/books/:id' => "books#destroy"

resources :books


resources :articles do
  resources :comments
end


get '/movies' => "movies#index", as: 'movies'
get '/movies/new' => "movies#new" , as: 'new_movie'
get '/movies/:id' => "movies#show" , as: 'movie'
post '/movies' => "movies#create"
delete '/movies/:id' => "movies#destroy"
patch '/movies/:id' => "movies#update"
get '/movies/:id/edit' => "movies#edit", as: 'movie_edit'

end

# Rails.application.routes.draw do

#   get '/ingredients' => '/ingredients#index'

# end


