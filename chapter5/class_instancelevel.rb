class Car
    # This runs inside class definition
    # Here self = Car (class object)
    @company = "Tesla"

    def show
        # this runs inside instance method
        # Her self = object instance
        puts @company
    end
end

c = Car.new
c.show


# Inside class block:

# self = Car

# So:

# @company

# belongs to class object.

# Inside method:

# self = c

# Now Ruby looks for:

# c ka @company

# which does not exist.

# So output:

# nil