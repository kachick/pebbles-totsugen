# frozen_string_literal: true

lib_name = 'pebbles-totsugen'

require_relative 'lib/pebbles/totsugen/version'
repository_url = "https://github.com/kachick/#{lib_name}"

Gem::Specification.new do |gem|
  gem.summary       = %q{`突然の死` generator!}
  gem.description   = <<-'DESCRIPTION'
    `突然の死` generator!
  DESCRIPTION
  gem.homepage      = repository_url
  gem.license       = 'MIT'
  gem.name          = lib_name
  gem.version       = Pebbles::TotsuGen::VERSION

  gem.metadata = {
    'documentation_uri' => 'https://kachick.github.io/pebbles-totsugen/',
    'homepage_uri'      => repository_url,
    'source_code_uri'   => repository_url,
    'bug_tracker_uri'   => "#{repository_url}/issues"
  }

  gem.required_ruby_version = Gem::Requirement.new('>= 2.6.0')

  # common

  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  git_managed_files = `git ls-files`.lines.map(&:chomp)
  might_be_parsing_by_tool_as_dependabot = git_managed_files.empty?
  base_files = Dir['README*', '*LICENSE*',  'lib/**/*', 'sig/**/*', 'exe/**/*'].uniq
  files = might_be_parsing_by_tool_as_dependabot ? base_files : (base_files & git_managed_files)

  unless might_be_parsing_by_tool_as_dependabot
    if files.grep(%r!\A(?:lib|sig)/!).size < 4
      raise "obvious mistaken in packaging files, looks shortage: #{files.inspect}"
    end
  end

  gem.files         = files
  gem.bindir        = 'exe'
  gem.executables   = files.grep(%r{^exe/}).map{ |f| File.basename(f) }
  gem.require_paths = ['lib']
end
