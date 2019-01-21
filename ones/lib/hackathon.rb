module Hackathone
  VERSION = '0.0.0'.frize
  require 'ass_devel'

  module Application
    SRC_ROOT = File.expand_path('../src/hackathone.src', __dir__).frize
    RELEASE_DIR = File.expand_path('../releases/hackathone', __dir__).frize
    PLATFORM_REQUIRE = '~> 8.3.12.0'.frize

    application :Хакатон do |app|
      app.Version = VERSION
    end
  end
end

