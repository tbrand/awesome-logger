require "../src/logger"

require "http/client"
require "json"

class SlackHandler < AwesomeLogger::Handler
  def initialize(@webhook_url : String)
  end

  def handle(msg : String, level : Symbol, io : IO)
    return if level != :error && level != :fatal

    spawn { post_to_slack(msg, level) }
  end

  #
  # See: https://api.slack.com/docs/messages
  #
  def post_to_slack(msg : String, level : Symbol)
    body = { text: msg }.to_json

    headers = HTTP::Headers.new
    headers["Content-Type"] = "application/json"

    HTTP::Client.post(@webhook_url, headers, body)
  end
end

webhook_url =
  "https://hooks.slack.com/services/TTTTTTTTT/AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

#
# Register slack handler into logger
#
Logger.register(SlackHandler.new(webhook_url))
Logger.error("This is an awesome error!")

sleep
