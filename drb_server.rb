require 'drb/drb'

class MyApp
  def greet(name)
    puts "#{name} said hello to me"
    "Hello, #{name}!"
  end
end

object = MyApp.new

puts "Starting Hello World Service...\n"
DRb.start_service('druby://localhost:9999', object)
DRb.thread.join
