
def given(message, options = {}) 
 if block_given? && !options[:pending]
  notify(:step_started, self, :given, message, options) 
  yield
 else 

  notify(:pending, self,:given, message, options)

 end
end

def notify(notification, example, type, message, options)
  RSpec.world.reporter.notify(notification, example, type, message, options)
end
