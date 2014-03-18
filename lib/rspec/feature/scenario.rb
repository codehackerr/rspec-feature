require 'rspec/core'

if RSpec::Core::ExampleGroup.singleton_class.respond_to?(:define_example_method, true)
  RSpec::Core::ExampleGroup.singleton_class.define_example_method :scenario
end
