require 'hackathon'
require 'ass_tests/minitest'
require 'ass_ole/rubyfy'

AssTests::InfoBases.describe do
  external :hackathon, ENV['HACKATHON_UNDER_TEST'] do
    platform_require ENV['HACKATHON_PLATFORM_REQUIRE']
  end
end

module HackathonTest
  module Runtimes
    module Thick
      like_rubify_runtime Runtimes::Thick
      run AssTests::InfoBases[:hackathon]
    end
  end
end

require 'ass_tests/minitest/autorun'
