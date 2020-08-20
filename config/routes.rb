Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/delete'

  get 'editorials/index'
  get 'editorials/show'
  get 'editorials/new'
  get 'editorials/create'
  get 'editorials/edit'
  get 'editorials/update'
  get 'editorials/delete'

  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/delete'

  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/create'
  get 'books/edit'
  get 'books/update'
  get 'books/delete'
  
  get 'authors/index'
  get 'authors/show'
  get 'authors/new'
  get 'authors/create'
  get 'authors/edit'
  get 'authors/update'
  get 'authors/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
