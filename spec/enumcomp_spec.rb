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
  
  
      describe "Pruebas Bibliografia Enumerable" do
		it "metodo any" do
			expect(@l1.any?).to eq true
			@l2= Prct06::Bibliografia.new nil
			expect(@l2.any?).to eq false
		end
		
		it "metodo count" do
			expect(@l1.count).to eq 2
		end
		
		it "metodo find" do
			expect(@l1.find {|i| i==@b2}).to eq @b2
		end
		
		it "sort: Devuelve las salidas a la inversa segun la publicacion " do  #
			p = @l1.sort{|b, a| a <=> b}
			expect(p).to eq([@b2,@b1])
		end
	end
	
      
      
    describe "Pruebas Referencia Comparable" do
		it "Comprobar el metodo menor que" do
	  	  expect(@b1 < @b2).to eq(true)
	  	 
	  	end
	  	
	  	it "comprobar el metodo mayor que" do
	  	  expect(@b1 > @b2).to eq(false)
	  	  
	  	end
	  	
	  	it "#La referencia 1 es igual que la referencia 2" do
	  	  expect(@b2 == @b2).to eq(true)
	  	end
	  	
	  	it "#La referencia 1 es menor igual que la referencia 2" do
	  	  expect(@b1<= @b2).to eq(true)
	  	end
	  	
	  	it "#La referencia 1 es mayor igual que la referencia 2" do
	  	  expect(@b1 >= @b2).to eq(false)
	  	end	
	
    end

end
