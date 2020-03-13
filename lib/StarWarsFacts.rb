# environment file
# loads all files we need to run our app

require "StarWarsFacts/version"
require "StarWarsFacts/cli"
require "StarWarsFacts/api"
require "StarWarsFacts/people"
require "StarWarsFacts/planets"

#dependencies
require "pry"
require "httparty"

module StarWarsFacts
  class Error < StandardError; end
  # Your code goes here...
end
