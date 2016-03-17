# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Weapon.create(name: 'ak47', picture: 'https://csgostash.com/img/weapons/AK-47.png', category: 'rifle')
Weapon.create(name: 'm4a1s', picture: 'https://csgostash.com/img/weapons/M4A1-S.png', category: 'rifle') 
Weapon.create(name: 'awp', picture: 'https://csgostash.com/img/weapons/AWP.png', category: 'sniper rifle') 
Weapon.create(name: 'desert eagle', picture: 'https://csgostash.com/img/weapons/Desert_Eagle.png', category: 'pistol') 
Weapon.create(name: 'mp7', picture: 'https://csgostash.com/img/weapons/MP7.png', category: 'smg')
Weapon.create(name: 'mag7', picture: 'https://csgostash.com/img/weapons/MAG-7.png', category: 'heavy')
Weapon.create(name: 'melee', picture: 'http://csgorig.eu/img/weapons/equipment/Knife/default.png', category: 'melee')


Skin.create(name: 'Vulcan', picture: 'https://csgostash.com/img/skins/s654fn.png', weapon_id: 1)
Skin.create(name: 'Wasteland Rebel', picture: 'https://csgostash.com/img/skins/s495fn.png', weapon_id: 1)
Skin.create(name: 'Fuel Injector', picture: 'https://csgostash.com/img/skins/s720fn.png', weapon_id: 1)
Skin.create(name: 'Golden Coil', picture: 'https://csgostash.com/img/skins/s657fn.png', weapon_id: 2)
Skin.create(name: 'Hyper Beast', picture: 'https://csgostash.com/img/skins/s554fn.png', weapon_id: 2)
Skin.create(name: 'Cyrex', picture: 'https://csgostash.com/img/skins/s393.png', weapon_id: 2)
Skin.create(name: 'Redline', picture: 'https://csgostash.com/img/skins/s236.png', weapon_id: 3)
Skin.create(name: 'Lightning Strike', picture: 'https://csgostash.com/img/skins/s79.png', weapon_id: 3)
Skin.create(name: 'Asiimov', picture: 'https://csgostash.com/img/skins/s274.png', weapon_id: 3)
Skin.create(name: 'Blaze', picture: 'https://csgostash.com/img/skins/s68.png', weapon_id: 4)
Skin.create(name: 'Midnight Storm', picture: 'https://csgostash.com/img/skins/s620fn.png', weapon_id: 4)
Skin.create(name: 'Kumicho Dragon', picture: 'https://csgostash.com/img/skins/s718fn.png', weapon_id: 4)
Skin.create(name: 'Whiteout', picture: 'https://csgostash.com/img/skins/s19.png', weapon_id: 5)
Skin.create(name: 'Urban Hazard', picture: 'https://csgostash.com/img/skins/s394.png', weapon_id: 5)
Skin.create(name: 'Nemesis', picture: 'https://csgostash.com/img/skins/s571fn.png', weapon_id: 5)
Skin.create(name: 'Silver', picture: 'https://csgostash.com/img/skins/s430.png', weapon_id: 6)
Skin.create(name: 'Heat', picture: 'https://csgostash.com/img/skins/s560fn.png', weapon_id: 6)
Skin.create(name: 'Bulldozer', picture: 'https://csgostash.com/img/skins/s185.png', weapon_id: 6)
Skin.create(name: 'Fade', picture: 'https://csgostash.com/img/skins/s185.png', weapon_id: 6)
Skin.create(name: 'Crimson Web', picture: 'https://csgostash.com/img/skins/s456.png', weapon_id: 7)
Skin.create(name: 'Doppler', picture: 'https://csgostash.com/img/skins/s548fn.png', weapon_id: 7)
Skin.create(name: '★ (Vanilla)', picture: 'https://csgostash.com/img/skins/s659fn.png', weapon_id: 7)