
class Characters
    attr_accessor :name, :actor

    @@all = []

    def initialize(data)
    self.name = data["name"]
    self.actor = data["actor"]
    @@all << self
    end

    def self.all
        @@all
    end
end
