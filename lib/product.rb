class Product

	attr_reader :price, :brand
	attr_accessor :name

	def initialize(name,price,brand)
		@name = name
		@price = price
		@brand = brand
	end

end