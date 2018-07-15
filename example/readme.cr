require "../src/logger"

Logger.set_level(:debug)

Logger.warning("Forks.")
Logger.debug("This is an awesome logger in crystal world!")
Logger.fatal("Awesome logger aims to be a standard logger in Crystal world!")
Logger.error("Main features are below!")
Logger.info("- Cool colorized output")
Logger.info("- Customizable handler interface (e.g. Slack notification)")
Logger.info("- Control log level on code or env var")
