# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Device.delete_all
# . . .
#Device.create(name: 'R510 - Server 1', ip: '120.210.3.2', mac: '34:34:23:7b:2a', description: %{test "£"}, type: 2.00)
Device.create(name: 'R510 - Server 1', ip: '120.210.3.2', mac: '34:34:23:7b:2a', description: %{test "£"}, devtype: 2)
