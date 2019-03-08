json.array! @suppliers.each do |suppliers|
  json.partial! "supplier.json.jbuilder", supplier: suppliers
end
