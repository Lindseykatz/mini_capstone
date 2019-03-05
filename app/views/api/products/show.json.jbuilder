json.id @input_product.id
json.name @input_product.name
json.price @input_product.price
json.description @input_product.description
json.image_url @input_product.image_url
json.discount @input_product.is_discounted?
json.tax @input_product.tax
json.total @input_product.total

