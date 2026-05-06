class User
    attr_writer :password

end

u = User.new
u.password = "123456" #password should be set but not be readable directly
 #security purpose