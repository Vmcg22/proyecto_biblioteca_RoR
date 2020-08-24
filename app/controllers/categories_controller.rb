class CategoriesController < ApplicationController
  def index
    @categorias = Category.all()
  end

  def show
    @categoria = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    datos_categoria = params[:category]

    nombre_categoria = datos_categoria[:categoria]
    descripcion_categoria = datos_categoria[:descripcion]

    @category = Category.create(categoria: nombre_categoria, descripcion: descripcion_categoria)

    redirect_to "/categories/#{@category.id}"
  end

  def edit
  end

  def update
  end

  def delete
  end
end
