class EditorialsController < ApplicationController
  def index
    @editoriales = Editorial.all()
  end

  def show
    @editorial = Editorial.find(params[:id])
  end

  def new
    @editorial = Editorial.new()
  end

  def create
    #De aquí puedo sacar ejemplos de pruebas: https://pendulo.com/especial/editoriales
    datos_editorial = params[:editorial]

    nombre = datos_editorial[:nombre]
    pais = datos_editorial[:pais]
    telefono = datos_editorial[:telefono]

    @editorial = Editorial.create(nombre: nombre, pais: pais, telefono: telefono)

    redirect_to "/editorials/#{@editorial.id}"

  end

  def edit
  end

  def update
  end

  def delete
  end
end
