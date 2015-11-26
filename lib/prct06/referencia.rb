module Prct06
	
	class Referencia
		include Comparable
		attr_accessor :autor, :titulo, :serie, :num_edi, :fecha_publi

		def initialize (autor, titulo, serie, num_edi, fecha_publi)
			@autor = autor
			@titulo = titulo
			@serie = serie
			@num_edi = num_edi
			@fecha_publi = fecha_publi
		end

		def autores
			salida = String.new ""
			if @autor.instance_of? String
				salida = "#{autor}\n"
			elsif @autor.instance_of? Array
				for item in @autor
					if @autor.last == item
						salida += item.to_s+"\n"
					else
						salida += item.to_s+", "
					end
				end
			end
			return salida
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
		
		def <=>(other)
			return nil unless other.is_a?Referencia   #retorna nil si se cumple que no se cumpla el is_a? y salimos
			@autor  <=> other.autor		
		end
		
		
	end

end
