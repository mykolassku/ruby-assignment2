#Restaurant items class
class RItem
  def initialize(name, description, price)
    @name = name
    @description = description
    @price = price
  end
  def toString() 
    return @name + " " + @description + " " + @price.to_s
  end
  def getName()
    return @name
  end
  def getDescription
    return @description
  end
  def getPrice()
    return @price
  end
end