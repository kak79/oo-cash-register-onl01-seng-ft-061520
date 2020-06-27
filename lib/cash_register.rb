require 'pry'
class CashRegister
    attr_accessor  :total, :discount, :add_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @previous_trans = 0
    end

    def add_item(title,price,quantity=1)
        @total += price * quantity
        quantity.times do 
            @items << title
        end
        @previous_trans = price * quantity
    end
    
    def apply_discount        
        @total = 1000*((100-discount)/100.0)
        total = @total.to_i
        if discount != 0
            return "After the discount, the total comes to $#{total}." 
        else
            return "There is no discount to apply." 
        end
    end

    def items
        @items
    end
    
    def void_last_transaction
        @total -= @previous_trans
    end
end
