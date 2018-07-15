# Awesome Logger

<h1 align="center">
  <img src="https://user-images.githubusercontent.com/3483230/42730875-67eabdd2-883c-11e8-8e3b-2a85b10ca384.png" width="800" />
</h1>

<p align="center">
  <b>Awesome Logger is SIMPLE and FLEXIBLE logger for Crystal applications.**</b>
</p>

:star: It aims to be a standard logger in Crystal world. :star:

- :ribbon: Cool colorized output
- :trophy: Customizable handler interface (e.g. **Slack notification**)
- :gem: Control log level on code or env var.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  awesome-logger:
    github: tbrand/awesome-logger
```

## Usage

```crystal
require "logger"
```

See `example/` for basic usages.
```crystal
Logger.debug("this is a debug message")
```

### Control log level

You can set log level by
```crystal
# The level is one of :debug, :info, :warning, :error or :fatal
Logger.set_level(:debug)
```

You can override the level by set env var of `CR_LOG_LEVEL`.
```crystal
# The level is one of DEBUG, INFO, WARNING, ERROR or FATAL
> export CR_LOG_LEVEL=DEBUG
```

The default log level is `:info`.

### Custom handler

You can define your custom handler for the logger.

This is useful when you want to hook some logs. (e.g. error notification)

For the slack notification, the example code is at `example/slack_notification.cr`.

## Contributing

1. Fork it (<https://github.com/tbrand/awesome-logger/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [tbrand](https://github.com/tbrand) Taichiro Suzuki - creator, maintainer
