ticket = Object.new


def ticket.date 
    "1903-01-02"
end
def ticket.venue
    "Town Hall"
end
def ticket.event 
    "Author's reading"
end
def ticket.performer
    "Mark Tawin"
end
def ticket.seat
    "second balcony, row 3 , seat 12"
end
def ticket.price
    5.50
end
def ticket.availability_status
    "sold"
end
def ticket.available?
    false
end

print "This ticket is for: " 
print ticket.event + ", at " 
print ticket.venue + ", on " 
puts ticket.date + "." 
print "The performer is " 
puts ticket.performer + "." 
print "The seat is " 
print ticket.seat + ", " 
print "and it costs $" 
puts "%.2f." % ticket.price 

puts "This ticket is for: #{ticket.event}, at #{ticket.venue}, on #{ticket.date}. \n The performer is #{ticket.performer}. \n The seat is #{ticket.seat} and it's costs $#{ticket.price}"