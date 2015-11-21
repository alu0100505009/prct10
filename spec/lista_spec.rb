require "prct06"

describe Prct06::Referencia do
	before :each do
		@b1 = Prct06::Libros.new(["Dave Thomas","Andy Hunt", "Chad Fowler"], 
												"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide",
												nil, "Pragmatic Bookshelf", "4 edition", "July 7, 2013", 
												["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
		@b2 = Prct06::Libros.new(["Scott Chacon"], 
												"Pro Git 2009th Edition",
												"Pro", "Pragmatic Bookshelf", "Apress; 2009 edition", "August 27, 2009", 
												["ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
		@b3 = Prct06::Libros.new(["David Flanagan","Yukihiro Matsumoto"], 
												"The Ruby Programming Language",
												nil, "O'Reilly Media", "1 edition", "February 4, 2008", 
												["ISBN-13: 978-0596516178", "ISBN-10: 0596516177"])
		@b4 = Prct06::Libros.new(["David Chelimsky", "Dave Astels", "Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], 
												"The RSpec Book: Behaviour Driven Development with RSpec",
												"Cucumber, and Friends (The Facets of Ruby)", "Pragmatic Bookshelf", "1 edition", "December 25, 2010", 
												["ISBN-13: 978-1934356371", "ISBN-10: 1934356379"])
		@b5 = Prct06::Libros.new(["Richard E. Silverman"], 
												"Git Pocket Guide",
												nil, "O’Reilly Media", "1 edition", "August 2, 2013", 
												["ISBN-13: 978-1449325862", "ISBN-10: 1449325866"])

		@l1 = Prct06::Bibliografia.new @b1
		@l1 << @b2
	end

	describe "Nodo" do
		it "Se crea un nuevo nodo" do
			expect(@l1.head).not_to eq nil
		end
		it "Comprobamos que existe un nodo y su siguiente apunta a nil" do
			expect(@l1.head).not_to eq nil
			expect(@l1.head.next.value).to eq @b2
		end
	end

	describe "List" do
		it "Comprobamos que se puede introducir un elemento" do
			expect(@l1.head.value).to eq @b1
			expect(@l1.head.next.value).to eq @b2
		end

		it "Debe existir una Lista con su cabeza" do
			expect(@l1.head).not_to eq nil
			expect(@l1.head.value).to eq @b1 #expect().to
		end

		it "Se pueden insertar varios elementos" do
			@l1 << [@b3, @b4, @b5]
			expect(@l1.head.value).to eq @b1
			expect(@l1.head.next.value).to eq @b2
			expect(@l1.head.next.next.value).to eq @b3
			expect(@l1.head.next.next.next.value).to eq @b4
			expect(@l1.head.next.next.next.next.value).to eq @b5
		end

		it "Se puede extraer el primer elemento de la lista" do
			@l1.del
			expect(@l1.head.value).not_to eq @b1
			expect(@l1.head.value).to eq @b2
		end
	end

end
