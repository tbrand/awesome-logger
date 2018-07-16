module AwesomeLogger
  abstract class Handler
    abstract def handle(msg : String, level : Symbol, io : IO)

    def debug? : Bool
      [:debug].includes?(level)
    end

    def info? : Bool
      [:debug, :info].includes?(level)
    end

    def warning? : Bool
      [:debug, :info, :warning].includes?(level)
    end

    def error? : Bool
      [:debug, :info, :warning, :error].includes?(level)
    end

    def fatal? : Bool
      [:debug, :info, :warning, :error, :fatal].includes?(level)
    end

    def level : Symbol
      L.level
    end
  end
end
