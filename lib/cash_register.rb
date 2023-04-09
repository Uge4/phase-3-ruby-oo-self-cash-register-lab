class CashRegister

attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount = nil)
        @discount = discount
        @total = 0
        @items = []
        @last_transaction = 0
    end


    def add_item(title, price, quantity = 1)
        self.last_transaction = price * quantity
        self.total += last_transaction
        quantity.times do 
            self.items << title
        end
        
    end

    def apply_discount
        
        if discount.nil? 
            return "There is no discount to apply."
        else
            discounted_to = 100 - self.discount 
            self.total = self.total * discounted_to / 100
            return "After the discount, the total comes to $#{self.total}."  	
        end 	
    end

    def void_last_transaction
       self.total -= self.last_transaction
    end

end

# event = CashRegister.new(20)
# event.add_item("Macbook Air", 1000)
# event.apply_discount
