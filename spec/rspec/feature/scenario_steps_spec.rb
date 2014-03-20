require 'spec_helper'
require 'rspec/feature/scenario_steps'

describe "scenario" do

 before(:each) do 
  @reporter = double("reporter")

  RSpec.configure do |config| 
   config.instance_variable_set(:@reporter, @reporter)
  end
 end

 @step_invoked = false

 scenario "allows 'given' step" do

  given "a step" do 

   @step_invoked =  true

  end

  @step_invoked.should be_true

 end

 scenario "step without block should be pending" do

  @reporter.should_receive(:notify).with(:pending, self, :given, "without block", {})

  given "without block"
 end

 scenario "step with pending option" do 

  @reporter.should_receive(:notify).with(:pending, self, :given, "with block", {:pending => true})

  given "with block",:pending => true do
  end

 end

end
