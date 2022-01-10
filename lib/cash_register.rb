class CashRegister 
    attr_accessor :discount, :total, :items, :void_last_transaction_amount

    def initialize(discount = 0)
        @total = 0 
        @discount = discount 
        @items = []
        @void_last_transaction_amount = 0 
    end 

    def add_item(title, price, quantity= 1)
         self.total += price * quantity
         quantity.times do  
            @items << title 
         end 

         self.void_last_transaction_amount = price * quantity
    end 

    def apply_discount
        if @discount != 0
            @total = @total * (100 - @discount)/100
            return "After the discount, the total comes to $#{@total}."
        else 
            return "There is no discount to apply."
        end 
    end 

    def void_last_transaction
        self.total -= @void_last_transaction_amount
    end 
end 