require './product.rb'

class Shopping_Cart

  @@shopping_cart = []

  def self.show_content
    return @@shopping_cart
  end


  def self.add_product(product)
    @@shopping_cart << product
    return @@shopping_cart
  end

  def self.remove_product(product)
    @@shopping_cart.delete(product)
      return @@shopping_cart
  end

  def self.total_cost_before_tax
    sum = 0
      @@shopping_cart.each do |product|
        sum += product.price
      end
    return sum
  end

  def self.total_cost_after_tax
    var = 0
      @@shopping_cart.each do |product|
        var += product.calculate_total_price
      end
     return var
  end

end

my_cart = Shopping_Cart.new
puts"__"
product1=Product.new("Broccoli", 5)
product2=Product.new("Carrot", 2)
Shopping_Cart.add_product(product1)
Shopping_Cart.add_product(product2)
puts Shopping_Cart.show_content
puts Shopping_Cart.total_cost_before_tax
puts Shopping_Cart.total_cost_after_tax
