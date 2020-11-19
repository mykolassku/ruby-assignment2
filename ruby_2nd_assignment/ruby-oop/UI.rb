class UI
  
  def initialize()
  end
  
  def main()

    # initialize Restaurant Items
    rItem1 = RItem.new("cookie", "brown and round", 2)
    rItem2 = RItem.new("salad", "meditranian fiss", 4.55)
    rItem3 = RItem.new("kebab", "every gobnik dream", 3.99)
    rItem4 = RItem.new("buckwheat", "fresh like a grean", 2.30)
    
    r2Item1 = RItem.new("soup", "very thick forest spirit", 3.99)
    r2Item2 = RItem.new("katliet" , "babushki signature meal", 3.50)
    r2Item3 = RItem.new("chiburki", "only for the toughest bellys", 8.21)
    r2Item4 = RItem.new("apple", "very simple and delicous", 1.29)
    
    # initialize restaurants with restaurant items
    restaurant1 = Restaurant.new("mac",[rItem1,rItem2,rItem3,rItem4])
    restaurant2 = Restaurant.new("hisburg",[r2Item1,r2Item2,r2Item3,r2Item4])
    
    #choose the restaurant loop
    while true
      puts "choose the restaurant"    
      puts "1. 2."
      select = gets.chomp
      if(select == "1")
        cart = Cart.new(0,restaurant1,[])
        break
      end
      if(select == "2")
        cart = Cart.new(0,restaurant2,[])
        break
      end
      if(select == "q")
        return
      end
    end
    
    # choose the items until q is entered
    while true
      puts "choose the item"
      cart.printRItems()
      puts "enter q if done choosing"
      select = gets.chomp
      if(select=="q") 
        break
      end
        cart.addItem(cart.getRestaurantItems[select.to_i])
     end

    # printing of the check and the total amount
    puts "your check: ----"
    cart.printItems();
    puts "-----------------"
    puts "end of the program"
    end
end

require 'Cart.rb'
require 'RItem.rb'
require 'Restaurant.rb'
require 'RCartItem.rb'

ui = UI.new()
ui.main()

