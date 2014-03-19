require 'spec_helper'
require 'rspec/feature/scenario_steps'

describe "Example Group" do
 @step_invoked = false

 scenario "allows given step" do

  given "a step" do 

   @step_invoked =  true

  end

  @step_invoked.should be_true

 end
end
