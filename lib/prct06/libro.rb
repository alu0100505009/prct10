module Prct06
    class Libros < Referencia
    
        attr_accessor :editorial, :isbn
    
        def initialize (autor, titulo, serie, editorial, num_edi, fecha_publi, isbn)
            super(autor, titulo, serie, num_edi, fecha_publi) #llamada al constructor de la clase padre
            @editorial = editorial
            @isbn = isbn
        end
    
    	def isbns
        	salida = String.new ""
        	if @isbn.instance_of? String
        		salida = "#{isbn}\n"
        	elsif @isbn.instance_of? Array
        		for item in @isbn
        		salida += item.to_s+"\n"
        		end
        	end
        	return salida
    	end

        def to_s
            salida = String.new ""
    			salida += self.autores
    			salida +=
    			"#{titulo}\n"+
    			"#{serie}\n"+
    			"#{editorial}; #{num_edi} (#{fecha_publi})\n"
    			salida += self.isbns
    			return salida
        end
	
	def ==(other)
		if other.is_a?Referencia		    
		     @autores == other.autores && @titulo == other.titulo && @serie == other.serie && @editorial == other.editorial &&
		     @num_edi == other.num_edi && @fecha_publi == other.fecha_publi @isbn == other.isbn
		else
		    false
		end
	end
    
    end
end
