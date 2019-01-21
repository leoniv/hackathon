module Hackathone
  VERSION = '0.0.0'.freeze
  require 'ass_devel'

  module Application
    SRC_ROOT = File.expand_path('../src/hackathone.src', __dir__).freeze
    RELEASE_DIR = File.expand_path('../releases/hackathone', __dir__).freeze
    PLATFORM_REQUIRE = '~> 8.3.12.0'.freeze

    application :Хакатон do |app|
      app.Version = VERSION
    end
  end
end

