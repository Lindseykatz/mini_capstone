# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new({name: "Parka", price: 100, image_url: "https://res.cloudinary.com/everlane/image/upload/c_fill,dpr_1.0,f_jpg,h_581,q_85,w_581/v1/i/8ca1531b_3212.jpg", description: "Winter heavy jacket with hood"})
product.save
product = Product.new({name: "Jean jacket", price: 50, image_url: "https://lsco.scene7.com/is/image/lsco/Levis/clothing/723340321-front-pdp.jpg?$grid_desktop_full$", description: "Denim jacket"})
product.save
product = Product.new({name: "Raincoat", price: 76, image_url: "https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/10/_103936650.jpg?h=365&w=240&dpr=2&quality=45&fit=fill&fm=jpg", description: "Water repellent jacket"})
product.save

Product.create! 