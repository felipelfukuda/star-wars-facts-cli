# environment file
# loads all files we need to run our app

require "StarWarsFacts/version"
require "StarWarsFacts/cli"

#dependencies
require "pry"
require "httparty"

module StarWarsFacts
  class Error < StandardError; end
  # Your code goes here...
end
