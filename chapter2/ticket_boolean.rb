ticket = Object.new
def ticket.available?

  true
end

if ticket.available?
  puts "Ticket is available"
else
  puts "Ticket is not available"
end