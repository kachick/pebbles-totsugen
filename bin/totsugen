#!/usr/bin/env ruby
# coding: utf-8

require_relative '../lib/pebbles/totsugen'

include Pebbles

usage =<<"EOS"
#{$PROGRAM_NAME} - 突然のほにゃほにゃジェネレータ

1. from $1
$ #{$PROGRAM_NAME} 突然の死

2. from STDIN
$ echo '突然の死' | #{$PROGRAM_NAME}
EOS

case ARGV.length
when 0
  puts TotsuGen.generate(gets.chomp)
when 1
  puts TotsuGen.generate(ARGV.shift)
else
  abort usage
end