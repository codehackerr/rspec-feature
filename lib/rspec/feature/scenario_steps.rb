def given(message) 
 if block_given?
  yield
 else 
  RSpec.world.reporter.notify(:pending, self,:given, message, {})
 end
end
