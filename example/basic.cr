require "../src/logger"

L.set_level(:debug)

#
# Basic usages
#
L.debug("this is a debug message")
L.info("this is an info message")
L.warning("this is a warning message")
L.error("this is an error message")
L.fatal("this is a fatal message")
