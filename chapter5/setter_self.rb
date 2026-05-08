class Person
    attr_accessor :name

    def set_name
        # self is required for setter methods
        self.name = "Ruby"
    end

    def show
        puts name
    end
end

p = Person.new
p.set_name
p.show