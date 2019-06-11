# require 'pry'

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


listing1 = Listing.new("NYC")
listing2 = Listing.new("New Orleans")
listing3 = Listing.new("Athens")

guest1 = Guests.new("Kevin")
guest2 = Guests.new("Abril")
guest3 = Guests.new("Dennis")
guest4 = Guests.new("Jammin")

trip1 = Trip.new(guest1, listing1)
trip2 = Trip.new(guest2, listing2)
trip3 = Trip.new(guest3, listing3)
trip4 = Trip.new(guest2, listing1)
trip5 = Trip.new(guest3, listing1)


Pry.start



# binding.pry
