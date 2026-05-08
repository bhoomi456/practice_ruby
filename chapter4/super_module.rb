module Greeting
    def hello
        puts "Hello from module"
    end
end
class Parent
    def hello
        puts "Hello from parent"
    end
end
class Child < Parent
    include Greeting
    def hello
        puts "Hello from child"
        super
    end
end
c = Child.new
c.hello