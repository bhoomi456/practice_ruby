module Greeting
    def hello
        puts " Hello from module"
    end
end
class Person
    include Greeting
    def hello
        puts "Hello from class"
    end
end
p = Person.new
p.hello