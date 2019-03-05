json.array! @products.each do |products|
  json.id products.id
  json.name products.name
  json.price products.price
  json.tax products.tax
  json.total products.total
  json.description products.description
  json.image_url products.image_url
  json.discount products.is_discounted?
end