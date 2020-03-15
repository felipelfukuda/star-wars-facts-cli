require_relative 'lib/StarWarsFacts/version'

Gem::Specification.new do |spec|
  spec.name          = "StarWarsFacts"
  spec.version       = StarWarsFacts::VERSION
  spec.authors       = ["felipelfukuda"]
  spec.email         = ["felipelfukuda@gmail.com"]

  spec.summary       = "Ruby CLI App - Star Wars Facts - GALACTIC EMPIRE BOUNTY DATABASE"
  spec.description   = "Uses SWAPI.co API to access data on the galaxy's most wanted fugitives and starships!"
  spec.homepage      = "https://github.com/felipelfukuda/star-wars-facts-cli"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/felipelfukuda/star-wars-facts-cli"
  spec.metadata["changelog_uri"] = "https://github.com/felipelfukuda/star-wars-facts-cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
  spec.add_development_dependency "httparty"
  spec.add_development_dependency "rainbow"
end
