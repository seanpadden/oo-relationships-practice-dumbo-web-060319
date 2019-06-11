class Listing
    attr_accessor :city

    @@all = []

    def initialize(city)
        @city = city 
        @@all << self 
    end 

    def guests
        # returns array of all guests who've stayed at listing
        trips.map do |g|
            g.guest
        end    

    end 

    def trips
        #returns an array of all trips at a listing
        Trip.all.select do |trip|
            trip.listing == self
        end 
    end 

    def trip_count
        #returns number of trips that have been taken to that listing
        counter = 0
        trips.each do |trip|
            if trip.listing == self
                counter += 1
            end 
        end 
        counter
    end 
    
    def self.all
        @@all 
    end 

    def self.find_all_by_city(city_name)
        self.all.select do |c|
            c.city == city_name
        end
    end 

    def self.most_popular
        # finds listing that has had most trips
        popular = nil
        self.all.each do |city|
            if popular == nil
                popular = city
            elsif city.trip_count > popular.trip_count
                popular = city
            end 
        end 
        popular
    end 



end 