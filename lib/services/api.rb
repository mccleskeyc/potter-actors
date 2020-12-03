
class Api

    URL = 'http://hp-api.herokuapp.com/api/characters'
    

    def self.get_data
        response = RestClient.get(URL)
        data = JSON.parse(response.body)
        data.each do |hash|
            Characters.new(hash)
        end
    end

end

