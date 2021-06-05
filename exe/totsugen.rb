#!/usr/bin/env ruby
# coding: utf-8
# frozen_string_literal: true

require_relative '../lib/pebbles/totsugen'

usage =<<"USAGE"
#{$PROGRAM_NAME} - `突然のほにゃほにゃ` ジェネレーター

1. from $1
$ #{$PROGRAM_NAME} 突然の死

2. from STDIN
$ echo '突然の死' | #{$PROGRAM_NAME}
USAGE

case ARGV.length
when 0
  puts Pebbles::TotsuGen.generate(gets.chomp)
when 1
  puts Pebbles::TotsuGen.generate(ARGV.shift)
else
  abort(usage)
end
