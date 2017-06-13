# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Device.delete_all
DeviceType.delete_all
TemplateVolume.delete_all
OsType.delete_all

# . . .
#Device.create(name: 'R510 - Server 1', ip: '120.210.3.2', mac: '34:34:23:7b:2a', description: %{test "£"}, type: 2.00)
User.create(name: 'Michele_Facco', password: 'Admin01!', password_confirmation: 'Admin01!')

DeviceType.create(name: 'PowerConnect 8024')
DeviceType.create(name: 'PowerConnect 6248')
DeviceType.create(name: 'PowerEdge R510')
DeviceType.create(name: 'PowerEdge VRTX - CMC')
DeviceType.create(name: 'PowerEdge VRTX - M630')
DeviceType.create(name: 'PowerEdge VRTX - R1_2401_1Gb')
DeviceType.create(name: 'Dell Networking N2024')
DeviceType.create(name: 'Dell Storage - SCv2020')
DeviceType.create(name: 'Dell Storage - PS6000')

OsType.create(name: 'Windows Server 2012')
OsType.create(name: 'Windows Server 2012 R2')
OsType.create(name: 'Windows Server 2016')
OsType.create(name: 'ESXi 6.0')
OsType.create(name: 'ESXi 6.5')
