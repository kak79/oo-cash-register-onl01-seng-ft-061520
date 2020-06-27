require 'pry'
class CashRegister
    attr_accessor  :total, :discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title,price,quantity=1)
        @total += price * quantity
        quantity.times do 
            @items << title
        end
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

    
    

end
