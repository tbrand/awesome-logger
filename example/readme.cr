require "../src/logger"

L.set_level(:debug)
L.warning("Forks.")
L.debug("This is an awesome logger in crystal world!")
L.fatal("Awesome logger aims to be a standard logger in Crystal world!")
L.error("Main features are below!")
L.info("- Cool colorized output")
L.info("- Customizable handler interface (e.g. Slack notification)")
L.info("- Control log level on code or env var")
