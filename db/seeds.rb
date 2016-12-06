# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Category.destroy_all


Category.create(name:'Computación')
Category.create(name:'TV')
Category.create(name:'Electrohogar')
Category.create(name:'Telefonía')


Category.find_by(name:'Computación').products.build(name:'LENOVO IDEAPAD 500', stock:100, price:399999, photo:'http://home.ripley.cl/store/Attachment/WOP/D113/2000356858278/2000356858278_2.jpg').save

Category.find_by(name:'Computación').products.build(name:'DISCO DURO LENOVO 1TB HD F309', stock:200, price:49999, photo:'http://home.ripley.cl/store/Attachment/WOP/D345/2000358642257/2000358642257_2.jpg').save

Category.find_by(name:'Computación').products.build(name:'CABLE GREEN-E HDMI', stock:500, price:2999, photo:'http://home.ripley.cl/store/Attachment/WOP/D347/2000352688206/2000352688206_2.jpg').save



Category.find_by(name:'TV').products.build(name:'LED MASTER-G MGLNX2490I 24', stock:50, price:79999, photo:'http://home.ripley.cl/store/Attachment/WOP/D171/2000358375568/2000358375568_2.jpg').save

Category.find_by(name:'TV').products.build(name:'MONITOR LG 24MT48AF-PM HD', stock:200, price:89999, photo:'http://home.ripley.cl/store/Attachment/WOP/D171/2000357617270/2000357617270_2.jpg').save

Category.find_by(name:'TV').products.build(name:'MONITOR LG 24MT48DF-PS HD', stock:70, price:99999, photo:'http://home.ripley.cl/store/Attachment/WOP/D171/2000360662663/2000360662663_2.jpg').save



Category.find_by(name:'Electrohogar').products.build(name:'LAVADORA MADEMSA EVOLUZIONE 12 BXG', stock:150, price:20999, photo:'http://home.ripley.cl/store/Attachment/WOP/D136/2000344323078/2000344323078_2.jpg').save

Category.find_by(name:'Electrohogar').products.build(name:'LAVADORA FENSA SEMI TWISTER 5100', stock:300, price:99999, photo:'http://home.ripley.cl/store/Attachment/WOP/D136/2000355529384/2000355529384_2.jpg').save

Category.find_by(name:'Electrohogar').products.build(name:'LAVADORA CARGA SUPERIOR MIDEA 3D WASH', stock:20, price:159999, photo:'http://home.ripley.cl/store/Attachment/WOP/D136/2000344335682/2000344335682_2.jpg').save



Category.find_by(name:'Telefonía').products.build(name:'AZUMI AC24 LITE NEGRO CLARO', stock:650, price:22999, photo:'http://home.ripley.cl/store/Attachment/WOP/D191/2000360543665/2000360543665_2.jpg').save

Category.find_by(name:'Telefonía').products.build(name:'AZUMI A35 LITE CLARO', stock:500, price:24999, photo:'http://home.ripley.cl/store/Attachment/WOP/D191/2000357784873/2000357784873_2.jpg').save

Category.find_by(name:'Telefonía').products.build(name:'OWN 3000 ENTEL', stock:280, price:29999, photo:'http://home.ripley.cl/store/Attachment/WOP/D191/2000357594526/2000357594526_2.jpg').save