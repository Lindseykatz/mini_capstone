json.array! @products.each do |products|
  json.partial! "product.json.jbuilder", product: products
end