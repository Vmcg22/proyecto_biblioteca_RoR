class UsersController < ApplicationController
  def index
    @usuarios = User.all
  end

  def show
    @usuario = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    datos_user = params[:user]

    nombre = datos_user[:nombre]
    telefono = datos_user[:telefono]
    direccion = datos_user[:direccion]
    observaciones = datos_user[:observaciones]

    @user = User.create(nombre: nombre, telefono: telefono, direccion: direccion, observaciones: observaciones)

    redirect_to "/users/#{@user.id}"
    
  end

  def edit
  end

  def update
  end

  def delete
  end
end
