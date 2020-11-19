class Cart
  def initialize(totalPrice, restaurant, items)
    @totalPrice = totalPrice
    @restaurant = restaurant
    @items = items
  end
  
  #prints the choosen restaurant items
  def printRItems()
    @restaurant.printItems()
  end
  
  # returns restaurant item/menu array
  def getRestaurantItems()
    return @restaurant.getMenu()
  end
  
  # prints the cart items
  def printItems()
    @items.each {|x| puts x.toString()}
     setCartTotalPrice()
     puts "total cost: " + @totalPrice.to_s
  end
  
  def addItem(item)
    #if item already exists increase its amount
    @items.each { |x| 
      if(x.getName() == item.getName())
        x.setAmount(x.getAmount()+1)
        puts "item increased"
        return
      end 
    }
    #RCartItem to show of the inheritance and add additional amount property for increasing the amount
    rcItem = RCartItem.new(item.getName(),item.getDescription(),item.getPrice(),1)
    @items.push(rcItem)
    
    puts "item added"
    puts "items size: " + @items.size().to_s
    
  end
  
  def setCartTotalPrice()
    total = 0
    @items.each { |x| total+=x.getPrice() * x.getAmount()}
    @totalPrice = total 
  end
  
  
end