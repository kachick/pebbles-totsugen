require './lib/pebbles/totsugen'

Gem::Specification.new do |gem|
  # specific

  gem.description   = %q{totsuzenno generator!!}

  gem.summary       = gem.description.dup
  gem.homepage      = 'http://kachick.github.com/pebbles-totsugen/'
  gem.license       = 'MIT'
  gem.name          = 'pebbles-totsugen'
  gem.version       = Pebbles::TotsuGen::VERSION.dup

  gem.add_development_dependency 'yard', '>= 0.8.6.1', '< 0.9'
  gem.add_development_dependency 'rspec', '>= 2.13', '< 3'
  gem.add_development_dependency 'rake', '>= 10', '< 20'
  gem.add_development_dependency 'bundler', '>= 1.3.5', '< 2'

  # common

  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end