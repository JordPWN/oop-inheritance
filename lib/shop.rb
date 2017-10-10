class Shop
	
	attr_reader :name
	attr_accessor :inventory, :sales

	def initialize(name)
		@name = name
		raise "name required" if name == nil || name.strip == ""
		@inventory = []
		@sales = []
	end

	def add_to_inventory(item)
		raise "product required" if item == nil
		@inventory << item
	end

	def sell_item(item)
		return false unless @inventory.detect{|item_at_index| item_at_index == item}
		@sales << item
		@inventory.delete(item)
		item
	end

	def revenue
		sales.inject(0){|sum, item| sum += item.price}
	end

	def stock
		stock_hash = Hash.new (0)
		@inventory.each{|items| stock_hash[items.name] += 1}
		stock_hash
	end

end