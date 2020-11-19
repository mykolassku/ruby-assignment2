#restaurant class 
class Restaurant
  def initialize(name, menu)
      @name = name
      @menu = menu
  end
  def printItems()
    @menu.each { |x| puts x.toString()}
  end
  def getMenu()
    return @menu
  end
end


