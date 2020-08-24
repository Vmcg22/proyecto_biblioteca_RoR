Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  post 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/delete'
  get 'users/:id' => 'users#show'

  get 'editorials/index'
  get 'editorials/show'
  get 'editorials/new'
  get 'editorials/create'
  get 'editorials/edit'
  get 'editorials/update'
  get 'editorials/delete'
  get 'editorials/:id' => 'editorials#show'

  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/delete'
  get 'categories/:id' => 'categories#show'

  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/create'
  get 'books/edit'
  get 'books/update'
  get 'books/delete'
  get 'books/:id' => 'books#show'
  
  get 'authors/index'
  get 'authors/show'
  get 'authors/new'
  #Post: Crea algo en el servidor
  post 'authors/create'
  get 'authors/edit'
  get 'authors/update'
  get 'authors/delete'
  #Parámetro variable :id que se mapea a la acción: authors#show
  get 'authors/:id' => 'authors#show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
