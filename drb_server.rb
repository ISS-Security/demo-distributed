# frozen_string_literal: true

require 'drb/drb'
$stdout.sync = true

# Hello World Application
class MyApp
  def greet(name)
    puts "#{name} greeted me"
    "Hello, #{name}!"
  end
end

object = MyApp.new

puts "Starting Hello World Service on localhost:9999...\n"
DRb.start_service('druby://localhost:9999', object)
DRb.thread.join
