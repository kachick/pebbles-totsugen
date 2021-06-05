# coding: us-ascii
# frozen_string_literal: true

require 'rspec'
require 'rspec/matchers/power_assert_matchers'

RSpec.configure do |config|
  config.disable_monkey_patching!
  config.warnings = true
  config.raise_on_warning = true

  config.expect_with(:rspec) do |c|
    c.syntax = :expect
  end

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'
end

require 'warning'

if Warning.respond_to?(:[]=) # @TODO Removable this guard after dropped ruby 2.6
  Warning[:deprecated] = true
  Warning[:experimental] = true
end

Gem.path.each do |path|
  Warning.ignore(//, path)
end

Warning.process do |_warning|
  :raise
end

require_relative '../lib/pebbles/totsugen'
