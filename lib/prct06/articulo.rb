module Prct06
    class Articulo < Referencia
    
        attr_accessor :volumen, :fasciculo, :articulo
    
        def initialize (autor, titulo, serie, volumen, num_edi, fecha_publi, fasciculo, articulo)
            super(autor, titulo, serie, fecha_publi, num_edi) #llamada al constructor de la clase padre
            @volumen = volumen
            @fasciculo = fasciculo
            @articulo = articulo
        end
    
        def to_s
            salida = String.new ""
    			salida += "Artículo: \n"
    			salida += self.autores
    			salida +=
    			"#{titulo}\n"+
    			"#{volumen}, #{fasciculo}, #{articulo}\n"
    			"#{serie}\n"+
    			"#{num_edi} (#{fecha_publi})\n"
    			return salida
        end
	
	def ==(other)
		if other.is_a?Referencia		    
		     @autores == other.autores && @titulo == other.titulo && @serie == other.serie && @volumen == other.volumen &&
		     @num_edi == other.num_edi && @fecha_publi == other.fecha_publi && @fasciculo == other.fasciculo && @articulo == other.articulo
		else
		    false
		end
	end	
    
    end

end
