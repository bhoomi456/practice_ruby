class Animal
    def sound
        puts "Animal sound"
    end
end

class Dog < Animal
    def sound
        puts "Dog barks"
    end
end

d=Dog.new
d.sound