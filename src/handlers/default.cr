module AwesomeLogger
  class DefaultHandler < AwesomeLogger::Handler

    def handle(msg : String, level : Symbol, io : IO)
      case level
      when :debug
        out(_c_debug(tag("Debug")), msg, io) if debug?
      when :info
        out(_c_info(tag("Info")), msg, io) if info?
      when :warning
        out(_c_warning(tag("Warning")), msg, io) if warning?
      when :error
        out(_c_error(tag("Error")), msg, io) if error?
      when :fatal
        out(_c_fatal(tag("Fatal")), msg, io) if fatal?
      end
    end

    private def out(tag : String, message : String, io : IO)
      io.puts "[ #{time} | #{tag} ] #{message}"
    end

    private def tag(t : String)
      ("%7s" % t)
    end

    private def time : String
      Time.now.to_s("%Y-%m-%d %H:%M:%S")
    end

    include AwesomeLogger::Theme
  end
end
