module A
    def test
        puts " module A"
    end
end
module B
    def test
        puts "Module B"
    end
end
class Demo
    include A
    include B
end
d = Demo.new
d.test