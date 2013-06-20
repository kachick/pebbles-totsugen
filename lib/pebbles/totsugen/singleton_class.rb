# coding: us-ascii

module Pebbles::TotsuGen; class << self

  # @param body [String, #to_str]
  # @return [String]
  def generate(body)
    formatter = SimplifiedFormatter.new body.to_str
    formatter.result
  end

end; end