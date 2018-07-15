require "../src/logger"

Logger.set_level(:debug)

#
# Basic usages
#
Logger.debug("this is a debug message")
Logger.info("this is an info message")
Logger.warning("this is a warning message")
Logger.error("this is an error message")
Logger.fatal("this is a fatal message")

#
# For short
#
L.d("this is a debug message")
L.i("this is an info message")
L.w("this is a warning message")
L.e("this is an error message")
L.f("this is a fatal message")
