require 'hackathon'
require 'ass_tests/minitest'
require 'ass_ole/rubify'

AssTests::InfoBases.describe do
  external :hackathon, ENV['HACKATHON_UNDER_TEST'] do
    platform_require ENV['HACKATHON_PLATFORM_REQUIRE']
  end
end

module HackathonTest
  module Runtimes
    module Thick
      is_ole_runtime :thick
      run AssTests::InfoBases[:hackathon]
    end
  end
end

require 'ass_tests/minitest/autorun'
