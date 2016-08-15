module MyEditor
  class Processor
    def process(buffer, command)
      case command
      when /i\n(.*)\n\./m
        buffer << $1
      when "p"
        $stdout << buffer
      when "q"
        exit!
      when /s\/(.*)\/(.*)\/$/
        buffer.gsub!($1, $2)
      end
    end
  end
end
