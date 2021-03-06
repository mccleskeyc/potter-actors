
class Api

    URL = 'http://hp-api.herokuapp.com/api/characters'
    

    def self.get_data # gets and parses the data from the API
        response = RestClient.get(URL)
        data = JSON.parse(response.body)
        data.each do |character|
            Characters.new(character)
        end
    end

end

