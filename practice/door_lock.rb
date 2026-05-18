class Door 
  def initializes
    @locked = true
  end

  def lock
    @locked = true
    puts "Door locked"
  end

  def unlock
    if @locked
      @locked = false
      puts "Door unlocked"
    else
      puts "Door is already unlocked"
    end
  end
  
  def locked?
    @locked
  end
end

lock1 = Door.new
lock1.lock
lock1.unlock

puts lock1.locked?

lock1.lock
puts lock1.locked?