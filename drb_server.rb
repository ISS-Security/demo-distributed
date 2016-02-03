require 'drb/drb'

class MyApp
  def greet
    'Hello, world!'
  end
end

object = MyApp.new

DRb.start_service('druby://localhost:9999', object)
DRb.thread.join
