require_relative 'lib/version'

Gem::Specification.new do |spec|
  spec.name          = "potter_actors"
  spec.version       = PotterActors::VERSION
  spec.authors       = ["mccleskeyc"]
  spec.email         = ["mccleskeyc@gmail.com"]

  spec.summary       = %q{Choose a Harry Potter character to learn who the actor is that plays them.}
  spec.description   = %q{Provides user with list of Harry Potter actors that they can choose to provide the respective actor.}
  spec.homepage      = "https://github.com/mccleskeyc/potter-actors"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
