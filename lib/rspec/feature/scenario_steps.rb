
def given(message, options = {}) 
 if block_given? && !options[:pending]
  yield
 else 
  RSpec.world.reporter.notify(:pending, self,:given, message, options)
 end
end
