require "colorize"

module AwesomeLogger
  module Theme
    def _c_debug(msg) : String
      msg.to_s.colorize.fore(:light_gray).to_s
    end

    def _c_info(msg) : String
      msg.to_s.colorize.fore(:light_green).to_s
    end

    def _c_warning(msg) : String
      msg.to_s.colorize.fore(:yellow).to_s
    end

    def _c_error(msg) : String
      msg.to_s.colorize.fore(:red).to_s
    end

    def _c_fatal(msg) : String
      msg.to_s.colorize.fore(:red).mode(:bold).to_s
    end
  end
end
