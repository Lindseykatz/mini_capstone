json.array! @all_products.each do |products|
  json.product_name = products.name
  json.product_price = products.price
  json.product_description = products.description
  json.product_image = products.image_url
end