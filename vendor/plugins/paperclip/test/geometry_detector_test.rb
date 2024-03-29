require './test/helper'

class GeometryDetectorTest < Test::Unit::TestCase
  should 'identify an image and extract its dimensions' do
    Paperclip::GeometryParser.stubs(:new).with("434x66,").returns(stub(:make => :correct))
    file = fixture_file("5k.png")
    factory = Paperclip::GeometryDetector.new(file)

    output = factory.make

    assert_equal :correct, output
  end

  should 'identify an image and extract its dimensions and orientation' do
    Paperclip::GeometryParser.stubs(:new).with("300x200,6").returns(stub(:make => :correct))
    file = fixture_file("rotated.jpg")
    factory = Paperclip::GeometryDetector.new(file)

    output = factory.make

    assert_equal :correct, output
  end
end

