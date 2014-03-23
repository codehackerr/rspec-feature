require 'spec_helper'
require 'rspec/feature/scenario_steps'

describe "scenario" do

 before(:each) do 
  @reporter = double("reporter").as_null_object

  RSpec.configure do |config| 
   config.instance_variable_set(:@reporter, @reporter)
  end
 end

 @step_invoked = false

 scenario "allows 'given' step" do

  #@reporter.should_receive(:notify).with(:step_started, self, :given, "a step", {})

  given "a step" do 
   @step_invoked =  true
  end

  @step_invoked.should be_true

 end

 scenario "step without block should be reported as pending" do

  @reporter.should_receive(:notify).with(:pending, self, :given, "without block", {})

  given "without block"

 end

 scenario "step with pending option should be reported as pending" do 

  @reporter.should_receive(:notify).with(:pending, self, :given, "with block", {:pending => true})

  given "with block",:pending => true do
 
  end
 end


 context "step with block and no options" do 
  scenario "should report step started" do
   @reporter.should_receive(:notify).with(:step_started, self, :given, "an empty block", {})
  
   given "an empty block" do
   end
 end

  scenario "should report step succeeded" do
   @reporter.should_receive(:notify).with(:step_succeeded, self, :given, "an empty block", {})
  
   given "an empty block" do
   end
  end
 end
end
