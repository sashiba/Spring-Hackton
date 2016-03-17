# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Weapon.create(name: 'AK-47', picture: 'http://vignette2.wikia.nocookie.net/cswikia/images/7/79/Ak47hud_csgo.png/revision/latest?cb=20150530195803')
  Weapon.create(name: 'M4A1-S', picture: 'http://vignette2.wikia.nocookie.net/cswikia/images/3/39/M4a1-s.png/revision/latest?cb=20130824215315') 

  Skin.create(name: 'Vulcan', picture: 'https://csgostash.com/img/skins/s654fn.png', weapon_id: 1);
  Skin.create(name: 'Wasteland Rebel', picture: 'https://csgostash.com/img/skins/s495fn.png', weapon_id: 1);
  Skin.create(name: 'Fuel Injector', picture: 'https://csgostash.com/img/skins/s720fn.png', weapon_id: 1);
  Skin.create(name: 'Golden Coil', picture: 'https://csgostash.com/img/skins/s657fn.png', weapon_id: 2);
  Skin.create(name: 'Hyper Beast', picture: 'https://csgostash.com/img/skins/s554fn.png', weapon_id: 2);
  Skin.create(name: 'Cyrex', picture: 'https://csgostash.com/img/skins/s393.png', weapon_id: 2);
