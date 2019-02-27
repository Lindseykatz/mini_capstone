require "HTTP"
# puts "Welcome to my jacket store!"
# puts "Press 1 to get details on a random jacket."
# user_input = gets.chomp
# if user_unput == 1
  my_product = HTTP.get("http://localhost:3000/api/product_url")
  product = my_product.parse
  # jacket = product["products="]
  # random_product = []
  # random_product << product["products="].rand(3)
  # p random_product
  p product
# end
