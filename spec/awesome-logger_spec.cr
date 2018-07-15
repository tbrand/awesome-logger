require "./spec_helper"

describe AwesomeLogger do

  it "set_level" do
    Logger.set_level(:debug)
    Logger.level.should eq(:debug)
  end

  it "level is overrided by env var" do
    ENV["CR_LOG_LEVEL"] = "INFO"

    Logger.set_level(:debug)
    Logger.level.should eq(:info)

    ENV.delete("CR_LOG_LEVEL")
  end
end
