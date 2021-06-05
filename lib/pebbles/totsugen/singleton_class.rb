# coding: us-ascii
# frozen_string_literal: true

module Pebbles
  module TotsuGen
    class << self
      # @param body [String, #to_str]
      # @return [String]
      def generate(body)
        formatter = SimplifiedFormatter.new(body.to_str)
        formatter.result
      end
    end
  end
end
