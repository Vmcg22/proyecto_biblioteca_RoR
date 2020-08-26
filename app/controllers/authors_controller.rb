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

    @all_authors = Author.all
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

  #Edita registros existentes en la BD.
  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    datos_autor = params[:author]

    nombre = datos_autor[:nombre]
    nacionalidad = datos_autor[:nacionalidad]
    idioma = datos_autor[:idioma]
    ganancias = datos_autor[:ganancias_anuales]

    @author.update(nombre: nombre, nacionalidad: nacionalidad, idioma: idioma, ganancias_anuales: ganancias)

    redirect_to "/authors/#{@author.id}"
  end

  def delete
  end
end
