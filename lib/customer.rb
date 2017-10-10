class Customer

	attr_reader :budget, :cart

	def initialize(budget=500)
		@budget = budget.nil? ? 500 : budget
		@cart = []
	end

	def cart_total
		cart.inject(0) {|sum,item| sum += item.price}
	end

	def add_to_cart(item)
		return false if @cart.size >= 5 || item.price + cart_total > budget
		@cart << item
		true
	end

	def checkout(shop)
		@cart.each do |item|
			shop.sales << item
			@budget -= item.price
			shop.inventory.delete(item)
		end
		@cart = []
	end

end