# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'attachinary'


def spaces_creation(name, description, price, address, category, noise, photo_urls)
  space = Space.new(
    {
      name: name,
      description: description,
      price: price,
      address: address,
      category: category,
      noise: noise
    }
  )

  space.send(:image_urls=, photo_urls,:folder => 'spaces')
  space.save
end

photo_urls = %w(http://i.imgur.com/T6xjwIB.png, http://i.imgur.com/T6xjwIB.png)

spaces_creation("The Mothership", "Wide-open loft, full of sun and stories", 7500,
 '10 des pins, Montreal, QC', "venue", "yes", photo_urls)
