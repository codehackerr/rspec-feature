require 'spec_helper'
require 'rspec/feature/scenario_steps'

describe "scenario" do
 @step_invoked = false

 scenario "allows 'given' step" do

  given "a step" do 

   @step_invoked =  true

  end

  @step_invoked.should be_true

 end

 scenario "step without block should be pending" do
  reporter = double("reporter")
  RSpec.configure do |config| 
   config.instance_variable_set(:@reporter, reporter)
  end
  reporter.should_receive(:notify).with(:pending, self, :given, "no block", {})
  given "no block"
 end
end
