#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.14
# from Racc grammer file "".
#

require 'racc/parser.rb'
module Rjson
  class Parser < Racc::Parser

  require 'Rjson/handler'

  attr_reader :handler

  def initialize(token, handler = Handler.new)
    @token = token
    @handler = handler
    super()
  end

  def next_token
    @token.next_token
  end

  def parse
    do_parse
    handler
  end
##### State transition tables begin ###

racc_action_table = [
    14,    31,    14,    24,    25,    26,    27,    14,    28,     6,
    13,     7,    14,    24,    25,    26,    27,    33,     8,     6,
    17,     7,    14,    24,    25,    26,    27,    30,   nil,     6,
    17,     7,    13,     6,   nil,     7 ]

racc_action_check = [
     4,    12,    31,    31,    31,    31,    31,    30,     8,    31,
     4,    31,    33,    33,    33,    33,    33,    16,     1,    33,
    16,    33,     5,     5,     5,     5,     5,    10,   nil,     5,
     5,     5,    10,     0,   nil,     0 ]

racc_action_pointer = [
    24,    18,   nil,   nil,    -2,    20,   nil,   nil,     8,   nil,
    20,   nil,    -7,   nil,   nil,   nil,    10,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
     5,     0,   nil,    10,   nil,   nil,   nil ]

racc_action_default = [
   -26,   -26,    -1,    -2,   -26,   -26,   -10,   -12,   -26,    -3,
   -26,    -6,   -26,   -13,   -25,    -8,   -26,   -11,   -15,   -16,
   -17,   -18,   -19,   -20,   -21,   -22,   -23,   -24,    37,    -4,
   -26,   -26,    -9,   -26,    -5,    -7,   -14 ]

racc_goto_table = [
    18,    11,    15,    12,     9,    16,     2,     3,    10,     1,
    29,   nil,   nil,    32,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    35,    34,    36,    12 ]

racc_goto_check = [
     9,     7,    11,     8,     5,    12,     2,     3,     6,     1,
     5,   nil,   nil,    11,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,     9,     7,     9,     8 ]

racc_goto_pointer = [
   nil,     9,     6,     7,   nil,     0,     4,    -3,    -1,    -5,
   nil,    -3,     0,   nil,   nil ]

racc_goto_default = [
   nil,   nil,    21,    20,     4,   nil,   nil,   nil,    22,   nil,
     5,   nil,   nil,    19,    23 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 14, :_reduce_none,
  1, 14, :_reduce_none,
  2, 15, :_reduce_none,
  3, 15, :_reduce_none,
  3, 19, :_reduce_none,
  1, 19, :_reduce_none,
  3, 20, :_reduce_none,
  2, 16, :_reduce_none,
  3, 16, :_reduce_none,
  1, 23, :_reduce_10,
  1, 24, :_reduce_11,
  1, 17, :_reduce_12,
  1, 18, :_reduce_13,
  3, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 22, :_reduce_none,
  1, 22, :_reduce_none,
  1, 22, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_20,
  1, 27, :_reduce_21,
  1, 27, :_reduce_22,
  1, 27, :_reduce_23,
  1, 27, :_reduce_24,
  1, 21, :_reduce_25 ]

racc_reduce_n = 26

racc_shift_n = 37

racc_token_table = {
  false => 0,
  :error => 1,
  :STRING => 2,
  :NUMBER => 3,
  :TRUE => 4,
  :FALSE => 5,
  :NULL => 6,
  "," => 7,
  ":" => 8,
  "[" => 9,
  "]" => 10,
  "{" => 11,
  "}" => 12 }

racc_nt_base = 13

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "STRING",
  "NUMBER",
  "TRUE",
  "FALSE",
  "NULL",
  "\",\"",
  "\":\"",
  "\"[\"",
  "\"]\"",
  "\"{\"",
  "\"}\"",
  "$start",
  "document",
  "object",
  "array",
  "start_object",
  "end_object",
  "pairs",
  "pair",
  "string",
  "value",
  "start_array",
  "end_array",
  "values",
  "scalar",
  "literal" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

# reduce 3 omitted

# reduce 4 omitted

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

def _reduce_10(val, _values, result)
 @handler.start_array 
    result
end

def _reduce_11(val, _values, result)
 @handler.end_array 
    result
end

def _reduce_12(val, _values, result)
 @handler.start_object 
    result
end

def _reduce_13(val, _values, result)
 @handler.end_object
    result
end

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

# reduce 19 omitted

def _reduce_20(val, _values, result)
 @handler.scalar val[0] 
    result
end

def _reduce_21(val, _values, result)
 n = val[0]; result = n.count('.') > 0 ? n.to_f : n.to_i 
    result
end

def _reduce_22(val, _values, result)
result = true
    result
end

def _reduce_23(val, _values, result)
result = false
    result
end

def _reduce_24(val, _values, result)
 result = nil 
    result
end

def _reduce_25(val, _values, result)
@handler.scalar val[0].gsub(/^"|"$/, '')
    result
end

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module Rjson
