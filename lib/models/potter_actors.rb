class Characters
    attr_accessor :name, :actor

    @@all = [] # class variable set equal to an empty array for the name and actor data to be shoveled into

    def initialize(data) # use an initialize method and instance variables to store the name and actor data
    @name = data["name"]
    @actor = data["actor"]

    @@all << self # stores the instance in the @@all class variable per above
    end

    def self.all
        @@all
    end
end
