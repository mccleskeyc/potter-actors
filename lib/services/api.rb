
class Api

    URL = 'http://hp-api.herokuapp.com/api/characters'
    

    def self.get_data # class method within which we use rest-client gem to get the data from the API and JSON to parse it
        response = RestClient.get(URL)
        data = JSON.parse(response.body)
        data.each do |hash|
            Characters.new(hash)
        end
    end

end

