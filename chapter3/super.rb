class Animal
    def sound
        puts "Animal sound"
    end
end

class Dog < Animal
    def sound
        super
        puts "Dog barks"
    end
end