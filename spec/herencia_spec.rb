require "prct06"

describe Prct06::Referencia do
	before :each do
		@b1 = Prct06::Libros.new(["Dave Thomas","Andy Hunt", "Chad Fowler"], 
												"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide",
												nil, "Pragmatic Bookshelf", "4 edition", "July 7, 2013", 
												["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
		@b2 = Prct06::Articulo.new(["Javier Pestano"], 
												"Herencia en Ruby",
												"Practicas LPP", "Volumen I", "Practica 8", "August 27, 2009", 
												"Fasciculo 1", "Articulo 1")

		@l1 = Prct06::Bibliografia.new @b1
		@l1 << @b2
	end

	describe "Herencia" do
		it "Probando que b1 es una instancia de Libro" do
			@b1.instance_of? Prct06::Libros
			expect(@b1.class.superclass).to eq Prct06::Referencia
		end

		it "Probando que b2 es una instancia de Articulo" do
			@b2.instance_of? Prct06::Articulo
			expect(@b2.class.superclass).to eq Prct06::Referencia
		end
	end

	describe "Nueva implementacion de lista tail-head" do
		it "Comprobamos que existe un tail" do
			expect(@l1.tail.value).to eq @b2
		end
		it "Comprobamos que existe un apuntador al elemento anterior" do
			expect(@l1.tail.prev.value).to eq @b1
		end
	end


end
