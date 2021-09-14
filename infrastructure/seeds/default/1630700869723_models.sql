insert into bikes.models (model, description, brand_id, type_id)
values ('Big Block', 'Built to be the track bike we’d always dreamed of owning, this competition-ready steel frame soaks up bumps and sprints like a champ. Boasting a single set of bottle bosses and bumped-up tire clearance, it’s drilled for brakes and fully street legal.', (select id from bikes.brands where brand = 'All-City'), (select id from bikes.types where type = 'Fixed Gear/Track Bike'));
insert into bikes.models (model, description, brand_id, type_id)
values ('Super Professional Single Speed','Featuring the 2-For-1 Dropout, our elegantly designed combination geared or single-speed sliding dropout system, the Super Professional can be converted from single-speed to geared as the city streets transform into your own concrete cyclocross course. Informed by our famed cross geometry to be fast, responsive, agile, and capable on mixed terrain, the Super Professional is a full-on everyday destroyer loaded with mounts for racks, fenders, two bottle cages, and all the versatility commuters and daily riders demand.', (select id from bikes.brands where brand = 'All-City'), (select id from bikes.types where type = 'Fixed Gear/Track Bike'));
insert into bikes.models (model, description, brand_id, type_id)
values ('Space Horse Tiagra','Capable of tackling ambitious centuries, speedy gravel jaunts, urban commutes, and loaded touring, the nimble and dependable Space Horse offers unmatched elegance, comfort, inspiration, and fun.', (select id from bikes.brands where brand = 'All-City'), (select id from bikes.types where type = 'Touring Bike'));
insert into bikes.models (model, description, brand_id, type_id)
values ('Space Horse GRX','Capable of tackling ambitious centuries, speedy gravel jaunts, urban commutes, and loaded touring, the nimble and dependable Space Horse offers unmatched elegance, comfort, inspiration, and fun.', (select id from bikes.brands where brand = 'All-City'), (select id from bikes.types where type = 'Touring Bike'));
insert into bikes.models (model, description, brand_id, type_id)
values ('Ogre','A Versatile All-Season Commuter Bike - If you’re like us, your bike needs likely change by the day, week, month or year. Quite the adaptable little beast, Ogre can get you to your job during the week, then way out of town on the weekend. It’s not sluggish on pavement or gravel and can also hold its own on singletrack. Ogre is designed to be the ultimate steel utility vehicle. It relishes in those “take-the-long-way-home-and-find-some-beverages-along-the-way” sort of commutes. Snow, sleet or sweltering humidity, this is an ideal year-round commuter bike. You can also haul enough crap on it that you don’t even have to go home if you don’t want to.', (select id from bikes.brands where brand = 'Surly'), (select id from bikes.types where type = 'Touring Bike'));
insert into bikes.models (model, description, brand_id, type_id)
values ('Midnight Special','Road Plus Bike That Tackles Pavement & Gravel - Midnight Special shines on pot-holed, deteriorating pavement and the occasional long stretch of gravel. Its 650b road plus tires eat up road chatter and absorb all the bumps in the road like the champion it was designed to be. When it comes to road bikes, we just want to toss a few bananas into our pockets and see where the road takes us. We seek out varied surfaces on our rides and frequently go from pavement to gravel to shittier pavement. Midnight Special allows us to accomplish all of that quite comfortably.', (select id from bikes.brands where brand = 'Surly'), (select id from bikes.types where type = 'Touring Bike'));