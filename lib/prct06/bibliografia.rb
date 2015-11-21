module Prct06

		class Bibliografia
		attr_reader  :head, :tail
		
		Nodo = Struct.new :value, :next, :prev

		def initialize (referencias)
			if referencias.is_a? Referencia
				@head = Nodo.new(referencias, nil, nil)
				@tail = nil
			else raise "Debe crearse una clase Referencia y pasarla como parámetro al constructor de esta clase" end
		end

		def << (value)
			if value.is_a? Referencia #Si se pasa una sola referencia
				if @head == nil
					@head = Nodo.new(value, nil, nil)
					@tail = nil
				else
					if @tail == nil
						@tail = Nodo.new(value, nil, @head)
						@head.next=@tail
					else
						aux = @tail
						@tail = Nodo.new(value, nil)
						aux.next = @tail
						tail.prev = aux
					end
				end
			elsif value.is_a? Array #Si se pasa un array de referencias
				value.each do |i|
					self << (i)
					
				end
			else raise "Se debe pasar una Referencia o un Array de Referencias"
			end
		
		end
		
		def del
			@head = @head.next
		end
		
	end
end
