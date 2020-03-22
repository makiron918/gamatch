# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ps4 = Game.create(:platform=>"PlayStation4")
ps4_mhw = ps4.children.create(:platform=>"Monster Hunter World")
ps4_cod = ps4.children.create(:platform=>"Coll of Duty")
ps4_mgs = ps4.children.create(:platform=>"Metal Gire Solid")
ps4_dbd = ps4.children.create(:platform=>"Dead by Daylight")
ps4_ow = ps4.children.create(:platform=>"Over Watch")
ps4_fn = ps4.children.create(:platform=>"FORTNITE")

switch = Game.create(:platform=>"Nintendo Switch")
switch_sp2 = switch.children.create(:platform=>"スプラトゥーン2")
switch_sb = switch.children.create(:platform=>"大乱闘スマッシュブラザーズSPECIAL")

steam = Game.create(:platform=>"Steam")
steam_pubg = steam.children.create(:platform=>"Player Unknown`s Battle Grounds")
steam_mc = steam.children.create(:platform=>"MINE CRAFT")