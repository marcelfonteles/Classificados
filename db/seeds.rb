# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or find_or_create_byd alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.find_or_create_by([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.find_or_create_by(name: 'Luke', movie: movies.first)
puts 'Cadastrando categorias.....'
Category.find_or_create_by(description: 'Animais e acessórios')
Category.find_or_create_by(description: 'Esportes')
Category.find_or_create_by(description: 'Para a sua casa')
Category.find_or_create_by(description: 'Eletrônicos')
Category.find_or_create_by(description: 'Música e hobbies')
Category.find_or_create_by(description: 'Bebês e crianças')
Category.find_or_create_by(description: 'Moda e beleza')
Category.find_or_create_by(description: 'Veículos e barcos')
Category.find_or_create_by(description: 'Imóveis')
Category.find_or_create_by(description: 'Empregos e negócios')

categories = [ 'Eletrodomésticos',
    'Higiene pessoal',
    'Itens de escritório',
    'Papelaria',
    'Academia',
    'Perfumaria']
categories.each do |category|
    Category.find_or_create_by(description: category)
end

puts 'Categorias cadastradas com sucesso.'

count = 1
20.times do
   random = (rand * 15).to_i
   price = (rand * 100).round(2)
   Ad.find_or_create_by(title:'Item '+ count.to_s, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!', category_id: random,
                        member_id: (rand+1).round(), price: price, image:'sem imagem') 
   count += 1
end
