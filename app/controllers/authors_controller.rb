class AuthorsController < ApplicationController
  def index
    @autores = Author.all()
  end

  def show
    @autor = Author.find(params[:id])
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
