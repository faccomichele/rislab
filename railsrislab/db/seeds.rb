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
User.create(name: 'Michele', password: 'dfgj345?23@$.SDF2', password_confirmation: 'dfgj345?23@$.SDF2', administrator: true)
User.create(name: 'Massimo', password: 'sdgjdk:2£dA3', password_confirmation: 'sdgjdk:2£dA3', administrator: true)
User.create(name: 'Adriana', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Andrea', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Angel', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Christopher', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Darran', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Frederic', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Jon', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Lam', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Lars', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Marc', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Marco', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Maximillian', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Peter', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Pierre', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Rocco', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Roman', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Saidi', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Serge', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Stephane', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Thomas', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Thorsten', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Uwe', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Vayanga', password: 'simple', password_confirmation: 'simple', administrator: false)
User.create(name: 'Vincent', password: 'simple', password_confirmation: 'simple', administrator: false)

dt01 = DeviceType.create(name: 'Switch')
dt02 = DeviceType.create(name: 'Server')
dt03 = DeviceType.create(name: 'Storage')
dt04 = DeviceType.create(name: 'Chassis')

Device.create(name: 'PC6248-1', ip: '192.168.53.1', mac: '00-25-64-2a-c3-91', description: 'Management network, switch 1', device_type_id: dt01.id)
Device.create(name: 'PC6248-2', ip: '192.168.53.2', mac: 'a4-ba-db-76-64-82', description: 'Management network, switch 2', device_type_id: dt01.id)
Device.create(name: 'PC8024', ip: '192.168.53.3', mac: 'd0-67-e5-a5-1e-4b', description: 'iSCSI switch, Ports 1-8 FD1 / 9-24 FD2 (+ EQL)', device_type_id: dt01.id)
Device.create(name: 'N2024', ip: '192.168.53.4', mac: 'f8-b1-56-42-be-53', description: 'Ports 3-4 to VRTX', device_type_id: dt01.id)
Device.create(name: 'VRTX-Switch', ip: '192.168.53.11', mac: 'f8-b1-56-49-82-59', description: 'Ports 0/1-2 to N2024', device_type_id: dt01.id)
Device.create(name: 'VRTX-CMC', ip: '192.168.53.10', mac: 'e0-db-55-fe-c3-3d', description: '', device_type_id: dt04.id)
Device.create(name: 'VRTX-M630-1', ip: '192.168.53.12', mac: '10-98-36-9d-49-73', description: '', device_type_id: dt02.id)
Device.create(name: 'VRTX-M630-2', ip: '192.168.53.13', mac: '10-98-36-9d-27-65', description: '', device_type_id: dt02.id)
Device.create(name: 'R510-1', ip: '192.168.53.30', mac: '78-2b-cb-0a-ff-0c', device_type_id: dt02.id)
Device.create(name: 'R510-2', ip: '192.168.53.31', mac: '78-2b-cb-04-d4-ea', device_type_id: dt02.id)
Device.create(name: 'R510-3', ip: '192.168.53.32', mac: '78-2b-cb-06-bf-83', device_type_id: dt02.id)
Device.create(name: 'SCv2020 SSN 216730', ip: '192.168.53.40', mac: '00-50-cc-7c-b2-20', description: 'SSN 216730 / iSCSI FD1 10.0.0.40 / FD2 10.0.53.40', device_type_id: dt03.id)
Device.create(name: 'PS6000 Group', ip: '192.168.53.50', mac: '00-09-8a-08-4a-f2', description: 'iSCSI IP 10.0.53.50', device_type_id: dt03.id)

OsType.create(name: 'Windows Server 2012')
OsType.create(name: 'Windows Server 2012 R2')
OsType.create(name: 'Windows Server 2016')
OsType.create(name: 'ESXi 6.0')
OsType.create(name: 'ESXi 6.5')
