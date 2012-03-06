module TimeClock

  # Will get initialized at the beginning of each run and
  # pull from a file that gets generated at first run.
  class Config

    CONFIG_FILE_LOCATION = File.expand_path(File.dirname(__FILE__) + "/config")

    def initialize
    end

  end
end
