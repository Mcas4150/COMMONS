# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Space.destroy_all

require 'attachinary'

@mike = User.create(
  email: 'mikecassidy0000@gmail.com',
  encrypted_password: 'Leafpad4'
  )

def spaces_creation(user_id, name, description, price, address, category, noise, capacity, image, dimensions, payment, lighting, audio, video, amenities, restrooms, cancellation, features, rentalpolicy, smoking, uses, disciplines, furniture, personnel, restrictions, website)
  space = Space.new(
    {
      user_id: @mike,
      name: name,
      description: description,
      price: price,
      address: address,
      category: category,
      noise: noise,
      capacity: capacity,
      image: image,
      dimensions: dimensions,
      payment: payment,
      lighting: lighting,
      audio: audio,
      video: video,
      amenities: amenities,
      restrooms: restrooms,
      cancellation: cancellation,
      features: features,
      rentalpolicy: rentalpolicy,
      smoking: smoking,
      uses: uses,
      disciplines: disciplines,
      furniture: furniture,
      personnel: personnel,
      restrictions: restrictions,
      website: website
    }
  )

  space.save
end



spaces_creation(
  2,
  "St. Mary's Studio",
  "We have a lovely studio with a marley floor, high ceilings, mirrors and sound system. It's a good space for dance classes, yoga classes, aerobics and movement classes, childcare/activities, smaller expositions and to smaller events and gatherings.",
  50,
 '14 Cushing Ave., Dorchester, MA',
 "Venue",
 "yes",
 100,
 "https://s3.amazonaws.com/pa-spaces.production/attachments/27605/DSCF0208.slide.JPG?1473182892",
 880,
 "Cash, Check, Credit card, Payment plan",
 "Fluorescent, Natural lighting/windows",
 "Sound system, MP3/auxiliary input, A large speaker with a cord that plugs into most phones, computers, mp3 players etc...",
 "Digital projector, Projection screen, Projector and screen must be requested ahead of time. We have adapters from mac and pc computers and have computers available if needed.",
 "Dressing rooms, Shower, Private restroom",
 true,
 "Cancellation must be within 24 hours for a full refund.",
 "Column-free, Heated, Mirrors, Lower-level so stays cool during summer.",
 "Renter must leave the space as found and follow locking policies when they apply. Renter is encouraged to share news of the space with friends and colleagues and can approach about more regular usage at a reduced rate.",
 false,
 "Live/Work, Exhibition, Studio Art, Meeting, Reading, Screening, Video/Film Shoot, Photo Shoot, Audition, Class, Special Event, Rehearsal, Performance",
 "Dance, Music, Theatre, Film",
 "Chairs",
 "On site manager, Call for addtl rental personnel, Rates include some or all equipment",
 "We ask that people clean their shoes from street debris prior to entering the space and that organizers sweep up if there is dirt form the outdoors. If mirrors and other furniture is moved we ask that it can be returned to where it was.",
 "http://www.stmarysdorchester.org"
 )


spaces_creation(
  2,
  "Gregorian Oriental Rugs",
  "We have a large open showroom with a space approximately 14x60 that is usable. The walls, floors and ceilings are wood and painted cinderblock. The ceiling is approximately 25 feet high. There are hundreds of rugs folded in piles and hung on the walls, creating superb acoustics. We are looking to offer the space to nonprofits and charitable organizations primarily, but we have had spoken word, storyslams, chamber music, a 60+ piece Orchestra, and theatrical performances among other events here.

Charities and nonprofits may have their fees waived or reduced upon request and review.

Alcohol is permitted, but must be served by a licensed, insured and bonded bartender.",
  300,
 '2284 Washington St, Newton Lower Falls, MA',
 "Venue",
 "yes",
 150,
 "https://s3.amazonaws.com/pa-spaces.production/attachments/17017/20141030_200914.slide.jpg?1420819538",
 1000,
 "Cash, Check, Credit card",
 "Fluorescent, Natural lighting/windows",
 nil,
  nil,
  nil,
 true,
 "100% refund if cancellation notice is given 72 hours in advance.",
 "Air-conditioned, Heated, Ceiling fans",
 "to be detailed before booking is confirmed",
 false,
 "Performance, Special Event, Reading",
  "Dance, Music, Theatre",
 nil,
 "On site manager",
 "Only available when store is closed, and until 11 pm unless special arrangements are made ahead of time.",
 "http://gregorianrugs.com"
 )




spaces_creation(
  2,
  "Parish Hall",
  "Given its central location, proximity to Route 95 (Rte. 128), parking and varied facilities, The First Parish Church in Weston provides a convenient, attractive, and comfortable venue for many kinds of events. Although first priority is given to church events, First Parish has long made its spaces available to other individuals and groups, particularly 501(C)(3)'s. Non-Profit organizations pay discounted rates equivalent to our contributing members. Please check with the Parish Administrator for more details.

The Parish Hall – The Parish Hall is a large, open hall with a small stage. The windows have shades for daytime projection. The stage is 20 feet wide and 11.5 feet front to back, with a rich red velvet draw curtain. (There is no backstage or wing areas so theatrical presentations require some creative staging.)

The Hall features EV speakers and an up-to-date sound system with three microphone inputs on the stage floor. Two microphones/stands are available for use. In addition to the main sound system, there is a moveable podium with built-in battery-powered PA (which can also be used elsewhere on the main floor of the facility). There is abundant 120V and 240V power on stage and around the room. As an example, on the stage there are 24 120V receptacles on 8 circuits and 1 30A 240V 4W receptacle. The hall has a projection room high on the rear wall which can also be used for a spotlight or stage management. There is ample power and Cat 5 and audio lines to backstage. We also have equipment that enables you to play your iPod over our speakers – be your own DJ!

The Hall is on the main level of the facility and is wheel-chair accessible. With 8-foot rectangular tables and our folding chairs, the Hall can seat up to 130 guests for a meal or approximately 160 auditorium-style. Users may bring in rental equipment (e.g. round tables) with permission from the Parish Administrator.",
  230,
 '349 Boston Post Road, Weston, MA',
 "Venue",
 "yes",
 150,
 "https://s3.amazonaws.com/pa-spaces.production/attachments/14136/fpcwparishhall1.slide.JPG?1411749464",
 1400,
 "Cash, Check",
"Natural lighting/windows, Lighting instruments",
  "PA system, Microphone, MP3/auxiliary input, The Hall features EV speakers and an up-to-date sound system with three microphone inputs on the stage floor. Up to three microphones/stands are available for use. In addition to the main sound system, there is a moveable podium with built-in battery-powered PA (which can also be used elsewhere on the main floor of the facility). There is abundant 120V and 240V power on stage and around the room. As an example, on the stage there are 24 120V receptacles on 8 circuits and 1 30A 240V 4W receptacle. The hall has a projection room high on the rear wall which can also be used for a spotlight or stage management. There is ample power and Cat 5 and audio lines to backstage. We also have equipment that enables you to play your iPod over our speakers – be your own DJ!",
   "Projection screen, The projections screens are the tri-pod variety that sit on a floor",
  "Kitchen/pantry",
 true,
 "Reservations are not considered firm until a completed application and non-refundable 1/2 deposit are received in the church office. In the case of weather-related cancellations, we will try to offer an acceptable replacement date.",
 "Column-free, Heated, Stage (20' w x 11.5' deep with curtain but no backstage area or wings",
 "Building must be left in same or better condition than it was found. -Events must end by 11:00 pm, though clean-up may happen after that. -Events involving children/youth must have at least one adult chaperone for every ten youngsters. -Sunday rentals usually cannot begin before 2:00 pm -While the use of hard liquor is prohibited anywhere on the FPCW grounds, wine and beer are allowed provided a fully-licensed and insured bartender serves such beverages. The bartender (or caterer-employer) must send an insurance binder, prior to the event, naming First Parish as an insured party. Users of the facilities accept full responsibility for complying with applicable laws regarding consumption of alcoholic beverages.",
 false,
 "Performance, Special Event, Class, Audition, Photo Shoot, Video/Film Shoot, Screening, Reading, Meeting, Rehearsal, Audio Recording",
  "Dance, Music, Theatre",
 "Chairs, Podium, Risers, Tables, Ladder",
 "Rates include some or all equipment",
 "  The stage is small and does not have wings so theatrical and dance presentations require creative staging but it has been done by some groups (e.g. Capella Clausura, MetroWest Opera). Church activities take precedence over outside use and the Parish Hall has regular weekly renters on Mondays, Tuesdays and Thursdays.",
 "http://www.firstparishweston.org"
 )



