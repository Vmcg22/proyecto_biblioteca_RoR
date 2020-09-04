Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  post 'users/create'
  get 'users/edit'
  patch 'users/update'
  get 'users/delete'
  get 'users/:id' => 'users#show'

  get 'editorials/index'
  get 'editorials/show'
  get 'editorials/new'
  post 'editorials/create'
  get 'editorials/edit'
  get 'editorials/update'
  get 'editorials/delete'
  get 'editorials/:id' => 'editorials#show'

  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  post 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/delete'
  get 'categories/:id' => 'categories#show'

  get 'books/index'
  get 'books/show'
  get 'books/new'
  post 'books/create'
  get 'books/edit'
  get 'books/update'
  get 'books/delete'
  get 'books/:id' => 'books#show'
  
  #Get: Visualizar Datos
  get 'authors/index'
  get 'authors/show'
  #Post: Crea algo en el servidor (Crea Registros)
  get 'authors/new'
  post 'authors/create'
  #Patch: Permite hacer actualizaciones a la BD.
  get 'authors/edit'
  patch 'authors/update'
  #Delete: Permite hacer eliminaciones de registros a la BD.
  delete 'authors/delete'
  #Parámetro variable :id que se mapea a la acción: authors#show
  get 'authors/:id' => 'authors#show'
  #get 'authors/update/:id' => 'authors#edit'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
