# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
contents = [
    [
        "Pure Coconut Water", 
        "Case of twelve, 11.1-Ounce containers (total of 133.2 ounces) high in potassium, free of fat, cholesterol, and sugar; Low in acidity contains five essential electrolytes-potassiumm, magnesium, calcium, Sodium, and phosphorous serve chilled or mixed in a cocktail a product of the Brazil.", 
        "co_water.jpg", 
        "13.98"
    ], [
        "HIPPEAS Organic Chickpea Puffs", 
        "This product is labelled to United States standards and may differ from similar products sold elsewhere in its ingredients, labeling and allergen warnings.", 
        "puffs.jpg", 
        "3.26"
    ], [
        "Coffee Latte", 
        "In between meals, reach for Mushroom Coffee Latte with Maitake & Chaga. Sip the creamy coffee you love, with 0 grams sugar, and the benefits of maitake, chaga, and mucuna. Sweetened with superfoods, enjoy a certified paleo, and dairy-free keto coffee that loves you a latte.", 
        "latte.jpg", 
        "16.99"
    ], [
        "AWAKE Caffeinated Chocolate Energy Bites", 
        "Here’s the deal—We’ve packed these delicious awake Bites with as much caffeine goodness as half a cup of coffee (or a 125ml energy drink). perfect for when you got to get stuff done, and just don’t have the energy to do it.", 
        "bites.jpg", 
        "19.99"
    ]
]

contents.each do |name, description, image, price|
    Product.create(
        name: name, 
        description: description, 
        image: image, 
        price: price
    )
end
