class Ticket
  attr_accessor :venue, :date  #getter & setter

  def initialize(venue, date)
    self.venue = venue
    self.date = date
  end

  def ===(other_ticket)  #custom logic for case when using ===
    self.venue == other_ticket.venue
  end
end

ticket1 = Ticket.new("Town Hall", "07/08/06")
ticket2 = Ticket.new("Conference center", "07/08/06")
ticket3 = Ticket.new("Town Hall", "08/09/06")

puts "ticket1 is for an event at :#{ticket1.venue}"

case ticket1
when ticket2
  puts "same location as ticket1"
when ticket3
  puts "same location as ticket1"
else
  puts "no match"
end
