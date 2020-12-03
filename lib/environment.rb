require 'pry'
require 'rest-client'
require 'json'


require_relative './models/characters.rb'
require_relative './services/api.rb'
require_relative './services/cli.rb'

# requires the above because they are constants we will need throughout our app