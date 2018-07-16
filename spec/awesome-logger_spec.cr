require "./spec_helper"

describe AwesomeLogger do

  it "set_level" do
    L.set_level(:debug)
    L.level.should eq(:debug)
  end

  it "level is overrided by env var" do
    ENV["CR_LOG_LEVEL"] = "INFO"

    L.set_level(:debug)
    L.level.should eq(:info)

    ENV.delete("CR_LOG_LEVEL")
  end
end
