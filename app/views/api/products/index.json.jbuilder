json.array! @products.each do |products|
  json.id products.id
  json.name products.name
  json.price products.price
  json.description products.description
  json.image_url products.image_url
  json.updated_at products.friendly_updated_at
end