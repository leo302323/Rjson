module Rjson
  class Handler
    def initialize
      @stack = [[:root]]
    end

    def start_object
      push [:hash]
    end

    def start_array
      push [:array]
    end

    def end_array
      @stack.pop
    end

    alias :end_object :end_array

    def scalar(s)
      @stack.last << [:scalar, s]
    end

    def result
      root = @stack.first.last
      process root.first, root.drop(1)
    end

    private

    def push(o)
      @stack.last << o
      @stack << o
    end

    def process(type, rest)
      case type
      when :array
        rest.map{ |x| process(x.first, x.drop(1)) }
      when :hash
        Hash[rest.map{|x| process(x.first, x.drop(1))}.each_slice(2).to_a]
      when :scalar
        rest.first
      end
    end
  end
end