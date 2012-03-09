class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s  # make sure it's a string
    attr_reader attr_name  # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      def initialize
        self.methods.select{|m| m =~ /_history$/}.each{|hst| instance_variable_set(("@"+hst.to_s).to_sym, [nil])}
      end
      def #{attr_name}=(val)
        @#{attr_name}=val
        @#{attr_name}_history << val
      end
      }
  end
end

#class Foo
#  attr_accessor_with_history :bar
#end
#
#f = Foo.new
#print f.inspect
#f.bar = 1
#f.bar = 2
#print "bar = " + f.bar.to_s + "\n"
#print f.bar_history.to_s + "\n" # => if your code works, should be [nil,1,2]
#f = Foo.new
#print f.bar_history.to_s + "\n" # => if your code works, should be [nil]
#f.bar = 3
#print "bar = " + f.bar.to_s + "\n"
#print f.bar_history.to_s + "\n" # => if your code works, should be [nil,3]
#
#class Boo
#  attr_accessor_with_history :b
#  attr_accessor_with_history :c
#end
#
#obj = Boo.new
#print obj.inspect + "\n"
#print obj.b_history.to_s + "\n"
#print obj.c_history.to_s + "\n"
#obj.b = "Fred"
#obj.c = "Mark"
#obj.b = "Alex"
#print obj.inspect + "\n"
#print obj.c + "\n"
#print obj.b_history.to_s + "\n"
#print obj.c_history.to_s + "\n"
#print obj.b + "\n"