require 'strscan'

module Rjson
  class Tokenizer
    STRING = /"(?:[^"\\]|\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4}))*"/
    NUMBER = /-?(?:0|[1-9]\d*)(?:\.\d+)?(?:[eE][+-]?\d+)?/
    TRUE   = /true/
    FALSE  = /false/
    NULL   = /null/

    def initialize io
      @ss = StringScanner.new io.read
    end

    def next_token
      return if @ss.eos?

      case
      when text = @ss.scan(STRING) then [:STRING, text]
      when text = @ss.scan(NUMBER) then [:NUMBER, text]
      when text = @ss.scan(TRUE) then [:TRUE, text]
      when text = @ss.scan(FALSE) then [:FALSE, text]
      when text = @ss.scan(NULL) then [:NULL, text]
      else
        c = @ss.getch
        [c, c]
      end
    end
  end
end