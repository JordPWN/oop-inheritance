class Laptop < Product

	attr_reader :specs, :ram, :size, :processor

	def initialize(name, price, brand, specs)
		super(name, price, brand)
		@size = specs[:size]
		@ram = specs[:ram]
		@processor = specs[:processor]
	end

end