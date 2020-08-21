class BooksController < ApplicationController
  def index
    @libros = Book.all()
  end

  def show
    @libro = Book.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
