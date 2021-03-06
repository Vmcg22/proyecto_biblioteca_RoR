# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin

#Author (Autor):
Author.create(nombre: "Gabriel Garcia", nacionalidad: "Mexicana", idioma: "Español")
Author.create(nombre: "Julio Verne", nacionalidad: "Francesa", idioma: "Francés")

#Category (Categoría):
Category.create(categoria: "Novelas", descripcion: "Relatos de Literatura")
Category.create(categoria: "Ficción", descripcion: "Relatos de Ciencia Ficción")
Category.create(categoria: "Aventuras", descripcion: "Relatos de Aventuras")

#Editorial (Editorial):
Editorial.create(nombre: "Aguilar", pais: "España", telefono: "(+35) 475-127-5784")

#Establecer edades aleatorias a los usuarios (Users):
rnd = Random.new()
User.all().each() do |user|
    edad_random = rnd.rand(20..50)
    user.update(edad: edad_random)
    puts "El Usuario #{user.nombre} tiene una Edad: #{user.edad}"
end

#Establecer ganancias aleatorias a autores (Author):
valor_random = Random.new()
Author.all().each() do |autor|
    ganancia_random = valor_random.rand(500.0..1000.0)
    autor.update(ganancias_anuales: ganancia_random)
end

#Edito las ganancias_anuales con .round (Author):
Author.all().each() do |a|
    #a.update(:ganancias_anuales => a.ganancias_anuales.round(2))
    puts "$ #{a.ganancias_anuales}"
end
#Suma de todas las Ganancias Totales (Author):
total = Author.sum(:ganancias_anuales).to_f()
puts "Total de Ganancias Anuales: $#{total}"

=end

=begin
    
#Creación de Libro:
book = Book.new(:titulo => "Del Amor y Otros Demonios", :idioma => "Español", :paginas => 460, :descripcion => "Novela de GGM")
author = Author.find(1) #Autor con ID 1 => Gabriel Garcia
categoria = Category.find(1) #Categoría con ID 1 => Novelas
editorial = Editorial.find(2) #Editorial con ID 2 => Alfaomega
author.books<<book #Agrego el Libro al Autor
categoria.books<<book#Agrego el Libro a una Categoría
editorial.books<<book#Agrego el Libro a una Editorial

=end



=begin
#Usuarios (User):
User.create(nombre: "Javier Vazquéz", telefono: "(+75) 759-4578", direccion: "Ruby #64", observaciones: "Ninguna")
User.create(nombre: "Daniel Martínez", telefono: "(+45) 487-4986", direccion: "Naranjos #31", observaciones: "Observaciones de Daniel")

#Author (Autor):
Author.create(nombre: "Gabriel Garcia", nacionalidad: "Mexicana", idioma: "Español", ganancias_anuales: 900)
Author.create(nombre: "Julio Verne", nacionalidad: "Francesa", idioma: "Francés", ganancias_anuales: 1500)

#Category (Categoría):
Category.create(categoria: "Novelas", descripcion: "Relatos de Literatura")
Category.create(categoria: "Ficción", descripcion: "Relatos de Ciencia Ficción")
Category.create(categoria: "Aventuras", descripcion: "Relatos de Aventuras")

#Editorial (Editorial):
Editorial.create(nombre: "Aguilar", pais: "España", telefono: "(+35) 475-127-5784")
=end





