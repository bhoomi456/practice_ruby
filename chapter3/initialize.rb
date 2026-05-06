class User
    def initialize(email)
        #initialize runs automatically when .new is called
        @email = email
        
    end
    def show_email
        puts @email
    end

end

u = User.new("bhoomi@gmail.com")
u.show_email