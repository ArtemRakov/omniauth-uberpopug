# frozen_string_literal: true

require_relative "lib/omniauth/uberpopug/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-uberpopug"
  spec.version       = Omniauth::Uberpopug::VERSION
  spec.authors       = ["Artem Rakov"]
  spec.email         = ["artem@rakov.me"]

  spec.summary       = "Omniauth strategy for uberpopug"
  spec.description   = "Omniauth strategy for uberpopug"
  spec.homepage      = "https://github.com/ArtemRakov/omniauth-uberpopug"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ArtemRakov/omniauth-uberpopug"
  spec.metadata["changelog_uri"] = "https://github.com/ArtemRakov/omniauth-uberpopug"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 2.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.7.1'
  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
