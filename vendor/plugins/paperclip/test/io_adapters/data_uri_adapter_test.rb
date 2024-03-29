require './test/helper'

class DataUriAdapterTest < Test::Unit::TestCase
  context "a new instance" do
    setup do
      @contents = "data:image/png;base64,dGVzdA=="
      @subject = Paperclip.io_adapters.for(@contents)
    end

    should "return a file name" do
      assert_equal "base64.txt", @subject.original_filename
    end

    should "return a content type" do
      assert_equal "image/png", @subject.content_type
    end

    should "return the size of the data" do
      assert_equal 4, @subject.size
    end

    should "generate an MD5 hash of the contents" do
      assert_equal Digest::MD5.hexdigest(Base64.decode64('dGVzdA==')), @subject.fingerprint
    end

    should "generate correct fingerprint after read" do
      fingerprint = Digest::MD5.hexdigest(@subject.read)
      assert_equal fingerprint, @subject.fingerprint
    end

    should "generate same fingerprint" do
      assert_equal @subject.fingerprint, @subject.fingerprint
    end

    should "return the data contained in the StringIO" do
      assert_equal "test", @subject.read
    end

    should 'accept a content_type' do
      @subject.content_type = 'image/png'
      assert_equal 'image/png', @subject.content_type
    end

    should 'accept an original_filename' do
      @subject.original_filename = 'image.png'
      assert_equal 'image.png', @subject.original_filename
    end

    should "not generate filenames that include restricted characters" do
      @subject.original_filename = 'image:restricted.png'
      assert_equal 'image_restricted.png', @subject.original_filename
    end

    should "not generate paths that include restricted characters" do
      @subject.original_filename = 'image:restricted.png'
      assert_no_match /:/, @subject.path
    end

  end
end
