class Dessert
  def initialize(n, c)
    @name = n
    @calories = c
  end
  
  attr_accessor :name
  attr_accessor :calories
  
  def healthy?
    return @calories < 200
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(n, c, f)
    @name = n
    @calories = c
    @flavor = f
  end
  
  attr_accessor :flavor
  
  def delicious?
    return @flavor != "black licorice"
  end
end

# Tests
#a = Dessert.new("foo", 100)
#print "=>" + a.calories.to_s
#print a.healthy?
#a.calories=250
#print "=>" + a.calories.to_s
#print a.healthy?
#print "=>" + a.name.to_s
#a.name="sdas"
#print "=>" + a.name.to_s
#print a.delicious?
#print "\n"

#b = JellyBean.new("boo", 230, "black licorice")
#print "=>" + b.calories.to_s
#print b.healthy?
#b.calories=250
#print "=>" + b.calories.to_s
#print b.healthy?
#print "=>" + b.name.to_s
#b.name="sdas"
#print "=>" + b.name.to_s
#print b.delicious?
#b.flavor="qqq"
#print b.delicious?
#print "\n"
