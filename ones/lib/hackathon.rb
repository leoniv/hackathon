module Hackathon
  VERSION = '0.0.0'.freeze
  require 'ass_devel'

  module Application
    extend AssDevel::DSL::Application
    SRC_ROOT = File.expand_path('../src', __dir__).freeze
    RELEASE_DIR = File.expand_path('../releases', __dir__).freeze
    PLATFORM_REQUIRE = '~> 8.3.12.0'.freeze

    application :Хакатон do |app|
      app.Version = VERSION
    end
  end
end

