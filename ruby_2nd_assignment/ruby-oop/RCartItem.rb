# Restaurant Cart Item class which inherits from RCItem class
class RCartItem < RItem
  def initialize(name,description,price,amount=1)
    super(name,description,price)
    @amount = amount
  end
  def getAmount()
    return @amount
  end
  def setAmount(amount)
    @amount = amount
  end
  def toString() 
      return @name + " " + @description + " " + @price.to_s + " " + @amount.to_s + "x"
  end
end