class Guests
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end 

    def listings
        trips.map do |trip|
            trip.listing
        end 
    end 

    def trips
        Trip.all.select do |t|
            t.guest == self
        end 
    end 

    def trip_count
        trips.count
    end 

    def self.all
        @@all
    end 

    def self.pro_traveller 
        #returns array of all guests who've made over one trip
        ## what guests have traveled
        self.all.select do |g|
            g.trip_count > 1
        end 
    end 

    def self.find_all_by_name(name)
        self.all.select do |n|
            n.name == name
        end 
    end 

end 