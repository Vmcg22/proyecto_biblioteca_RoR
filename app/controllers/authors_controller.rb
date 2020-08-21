class AuthorsController < ApplicationController
  #Muestra en una vista todos los Autores
  def index
    @autores = Author.all()
  end

  #Muestra en una vista cada Autor dependiendo el (ID)
  def show
    @autor = Author.find(params[:id])
  end

  #Crea una instancia del Modelo (Author)
  def new
    @author = Author.new()
  end

  #Permite recibir los datos y guardarlos en la BD
  def create
    #Se recoge el hash con los datos del autor
    datos_autor = params[:author]

    #Se recoje cada uno de los datos del autor
    nombre_autor = datos_autor[:nombre]
    nac_autor = datos_autor[:nacionalidad]
    idioma_autor = datos_autor[:idioma]
    ganancias_autor = datos_autor[:ganancias_anuales]

    #En base a los nuevos datos recibidos como parámetros
    #Se crea un nuevo modelo de Author:
    @author = Author.new(nombre: nombre_autor, nacionalidad: nac_autor, idioma: idioma_autor, ganancias_anuales: ganancias_autor)

    #Se guarda en la base de datos
    @author.save()

    redirect_to "/authors/#{@author.id}"
  end

  def edit
  end

  def update
  end

  def delete
  end
end
