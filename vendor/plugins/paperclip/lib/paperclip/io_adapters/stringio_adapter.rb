module Paperclip
  class StringioAdapter < AbstractAdapter
    def initialize(target)
      @target = target
      cache_current_values
      @tempfile = copy_to_tempfile
    end

    attr_writer :content_type

    private

    def cache_current_values
      @original_filename = @target.original_filename if @target.respond_to?(:original_filename)
      @original_filename ||= "stringio.txt"
      self.original_filename = @original_filename.strip

      @content_type = @target.content_type if @target.respond_to?(:content_type)
      @content_type ||= "text/plain"

      @size = @target.size
    end

    def copy_to_tempfile
      while data = @target.read(16*1024)
        destination.write(data)
      end
      destination.rewind
      destination
    end

  end
end

Paperclip.io_adapters.register Paperclip::StringioAdapter do |target|
  StringIO === target
end
