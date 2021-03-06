$gname="Paul"
NAME="Bill"
class Customer
  @@no_of_customers=0
  NUM=2
  def num()
    puts "23"
  end

  def initialize(id, name, addr)
    @cust_id=id
    @cust_name=name
    @cust_addr=addr
  end
  def display_details()
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
    puts $gname
  end

  def total_no_of_customers()
    @@no_of_customers += 1
    puts "Total number of customers: #@@no_of_customers"
  end
end

puts Customer::NUM

# 创建对象
cust1=Customer.new("1", "黎明", "香港")
cust2=Customer.new("2", "吴京", "大陆")

# 调用方法
$gname="Gates"
cust1.display_details()
cust1.total_no_of_customers()
cust2.display_details()
cust2.total_no_of_customers()
puts $gname
puts NAME

#puts defined?NAME
puts defined?$gname
puts defined?Customer

$age=40
case $age
when 0..2
  puts "婴儿"
when 3..12
  puts "小孩"
when 13..18
  puts "少年"
when 19..44
  puts "青年"
when 45..59
  puts "中年"
else
  puts "老年"
end


def test
  yield 1,2,3
end

#block,必须要放在方法之后
test{|a,b,c| puts a+b+c}

module Hani

  AGE=22

  def Hani.happy(name)
    puts name+" is so happy"
  end

  def happy(name)
    puts name+" is so happy"
  end

end

class Huni
  include Hani
  @@sex="male"
  attr_accessor :name,:age
  def Huni.go
    puts Hani::AGE
    puts Hani.happy "ja"
  end
end

puts Huni.go
huni=Huni.new
huni2=huni
puts huni.happy ("Mall")
puts Huni::AGE

animals=%w{cat dog sheep cow}
animals.each{|animal| puts animal}

$x=gets
if $x.to_i>3
  puts "#{$x}\大于3"
elsif $x.to_i<0
  puts "#{$x}\小于0"
else
  puts "0<=#{$x}\<=3" 
end

huni.name="Huni"
huni.age=22

puts huni.name+"今年#{huni.age}岁了"
puts huni.name
huni.freeze
huni2.name="huni2"
huni2.age=32
puts huni2.name
