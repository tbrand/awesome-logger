require "./theme"
require "./handlers"

class L
  LEVEL_ENV_VAR = "CR_LOG_LEVEL"

  @@level    : Symbol = :debug
  @@handlers : Array(AwesomeLogger::Handler) = [] of AwesomeLogger::Handler

  def self.set_level(level : Symbol)
    levels = [:debug, :info, :warning, :error, :fatal]

    unless levels.includes?(level)
      raise "unknown log level '#{level}' (expected one of #{levels})"
    end

    @@level = level
  end

  def self.level : Symbol
    return :debug if "DEBUG" == ENV[LEVEL_ENV_VAR]?
    return :info if "INFO" == ENV[LEVEL_ENV_VAR]?
    return :warning if "WARNING" == ENV[LEVEL_ENV_VAR]?
    return :error if "ERROR" == ENV[LEVEL_ENV_VAR]?
    return :fatal if "FATAL" == ENV[LEVEL_ENV_VAR]?

    @@level
  end

  def self.register(handler : AwesomeLogger::Handler)
    @@handlers << handler
  end

  def self.debug(msg, io : IO = STDOUT)
    handle(msg, :debug, io)
  end

  def self.d(msg, io : IO = STDOUT)
    debug(msg, io)
  end

  def self.info(msg, io : IO = STDOUT)
    handle(msg, :info, io)
  end

  def self.i(msg, io : IO = STDOUT)
    info(msg, io)
  end

  def self.warning(msg, io : IO = STDOUT)
    handle(msg, :warning, io)
  end

  def self.w(msg, io : IO = STDOUT)
    warning(msg, io)
  end

  def self.error(msg, io : IO = STDERR)
    handle(msg, :error, io)
  end

  def self.e(msg, io : IO = STDERR)
    error(msg, io)
  end

  def self.fatal(msg, io : IO = STDERR)
    handle(msg, :fatal, io)
  end

  def self.f(msg, io : IO = STDERR)
    fatal(msg, io)
  end

  def self.handle(msg, level, io)
    @@handlers.each(&.handle(msg, level, io))
  end
end

L.register(AwesomeLogger::DefaultHandler.new)
