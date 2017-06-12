require 'test_helper'

class DeviceTest < ActiveSupport::TestCase
  fixtures :devices

  test "device attributes must not be empty" do
    device = Device.new
    assert device.invalid?
    assert device.errors[:name].any?
#    assert device.errors[:description].any?
    assert device.errors[:ip].any?
    assert device.errors[:mac].any?
    assert device.errors[:devtype].any?
  end

  test "device devtype must greater than 0" do
    device = Device.new(name: "My Server", ip: "1.1.1.1", mac: "00:00:00:00:00:00")
    device.devtype = -1
    assert device.invalid?
    assert_equal ["must be greater than or equal to 1"],
    device.errors[:devtype]
    device.devtype = 0
    assert device.invalid?
    assert_equal ["must be greater than or equal to 1"],
    device.errors[:devtype]
    device.devtype = 1
    assert device.valid?
  end

  test "device is not valid without a unique name" do
    device = Device.new(name: devices(:r510_server).name, description: "yyy", devtype: 1, ip: "2.2.2.2", mac: "00:00:00:00:00:CC" )
    assert device.invalid?
    assert_equal ["has already been taken"], device.errors[:name]
  end

#  def new_product(image_url)
#Product.new(title: "My Book Title",
#description: "yyy",
#price: 1,
#image_url: image_url)
#end
#test "image url" do
#ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
#http://a.b.c/x/y/z/fred.gif }
#bad = %w{ fred.doc fred.gif/more fred.gif.more }
#ok.each do |name|
#Chapter 7. Task B: Validation and Unit Testing • 94
#report erratum • discuss
#assert new_product(name).valid?, "#{name} shouldn't be invalid"
#end
#bad.each do |name|
#assert new_product(name).invalid?, "#{name} shouldn't be valid"
#end
#end

end
