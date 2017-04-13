require "Rjson/version"
require 'Rjson/tokenizer'
require 'Rjson/parser'
require 'racc'
require 'stringio'

module Rjson
  # Your code goes here...
  def self.load(json)
    input = StringIO.new json
    tok = Rjson::Tokenizer.new input
    parser = Rjson::Parser.new tok
    handler = parser.parse
    handler.result
  end
end
