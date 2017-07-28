# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'attachinary'

@mike = User.create(
  email: 'mikecassidy0000@gmail.com',
  encrypted_password: 'Leafpad4'
  )

def spaces_creation(user_id, name, description, price, address, category, noise, capacity, photo_urls)
  space = Space.new(
    {
      user_id: @mike,
      name: name,
      description: description,
      price: price,
      address: address,
      category: category,
      noise: noise,
      capacity: capacity
    }

  )

  space.send(:image_urls=, photo_urls,:folder => 'spaces')
  space.save
end

photo_urls = %w(http://i.imgur.com/P7tJTsD.jpg, http://i.imgur.com/T6xjwIB.png)

spaces_creation(2, "The Mothership", "Wide-open loft, full of sun and stories", 50,
 '10 des pins, Montreal, QC', "Venue", "yes", 75, photo_urls)


photo_urls = %w(http://i.imgur.com/83A8A55.jpg, http://i.imgur.com/r1rcnd3.jpg)

spaces_creation(2, "Textile Park", "Massive Picnic Table, completely open for public us, come add some graffiti", 20,
 '15 Rue Bernard E, Montréal, QC', "Other", "no", 75, photo_urls)



photo_urls = %w(http://i.imgur.com/chRS4uD.png, http://i.imgur.com/r1rcnd3.jpg)

spaces_creation(2, "Birdbrain Barn", "Come sit and ponder how it will all end for you", 80,
 '6597 St Laurent Blvd, Montreal, QC', "Working-Space", "no", 1, photo_urls)


photo_urls = %w(http://i.imgur.com/hKbt2IN.jpg, http://i.imgur.com/r1rcnd3.jpg)

spaces_creation(2, "Painters Place", "Come paint and you'll feel better", 40,
 '6537 St Laurent Blvd, Montreal, QC', "Working-Space", "yes", 10, photo_urls)


photo_urls = %w(http://i.imgur.com/WcZAG9m.jpg, http://i.imgur.com/WcZAG9m.jpg)

spaces_creation(2, "Splash Laundromat", "Come dance ur sins clean", 200,
 '6499 St Laurent Blvd, Montreal, QC', "Venue", "no", 150, photo_urls)


photo_urls = %w(http://i.imgur.com/ZXNrgWf.jpg, http://i.imgur.com/ZXNrgWf.jpg)

spaces_creation(2, "Photo Factory", "Come take ur best shot...", 100,
 '4499 St Laurent Blvd, Montreal, QC', "Working-Space", "yes", 15, photo_urls)

photo_urls = %w(http://i.imgur.com/w9cD2S8.jpg, http://i.imgur.com/w9cD2S8.jpg)
spaces_creation(2, "Pillar House", "This is a real place", 80,
 '4000 St Laurent Blvd, Montreal, QC', "Other", "no", 80, photo_urls)


photo_urls = %w(http://i.imgur.com/5RoN1E5.jpg, https://c1.staticflickr.com/5/4091/5204926883_7f5aa134f7_b.jpg)
spaces_creation(2, "350 Cool Roof", "Party Low, Party High on the Flattop", 200,
 '3000 St Laurent Blvd, Montreal, QC', "Other", "no", 100, photo_urls)

photo_urls = %w(http://i.imgur.com/qEMYDOe.jpg, http://i.imgur.com/qEMYDOe.jpg)
spaces_creation(2, "Vault", "Get away with murder without breaking the bank..", 3000,
 '2000 St Laurent Blvd, Montreal, QC', "Venue", "no", 200, photo_urls)
