lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'serverspec_extra_types/version'

Gem::Specification.new do |spec|
  spec.name          = 'serverspec-extra-types'
  spec.version       = ServerspecExtraTypes::VERSION
  spec.authors       = ['Andrew Wardrobe']
  spec.email         = ['andrew.g.wardrobe@googlemail.com']

  spec.summary       = 'Additional Types and Matchers for Serverspec'
  spec.description   = 'Extentions to Serverspec'
  spec.homepage      = 'http://github.com/anndrewwardrobe/serverspec-extra-types'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.8.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'serverspec_launcher', '~> 0.4.0'
  spec.add_development_dependency  'rspec-collection_matchers'
  spec.add_development_dependency  'rest-client'
  spec.add_development_dependency 'docker-swarm-sdk'
  spec.add_development_dependency 'sinatra'

  spec.add_runtime_dependency 'serverspec'

end
