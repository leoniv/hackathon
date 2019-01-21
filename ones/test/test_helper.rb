require 'hackathon'
require 'ass_tests/minitest'
require 'ass_ole/rubify'

MiniTest::Spec.class_eval do
  def self.shared_examples
    @shared_examples ||= {}
  end
end

module MiniTest::Spec::SharedExamples
  def shared_examples_for(desc, &block)
    MiniTest::Spec.shared_examples[desc] = block
  end

  def it_behaves_like(desc)
    self.instance_eval(&MiniTest::Spec.shared_examples[desc])
  end
end

Object.class_eval { include(MiniTest::Spec::SharedExamples) }

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
