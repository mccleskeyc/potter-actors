class Characters
    attr_accessor :name, :actor

    @@all = [] 

    def initialize(data) # initialize method to save our character and actor names
    @name = data["name"]
    @actor = data["actor"]

    @@all << self 
    end

    def self.all
        @@all
    end
end
