# frozen_string_literal: true

module Kernel
  def method_missing(method_name, *args, &)
    super unless method_name.to_s =~ /^p.$/

    self.class.define_method(method_name) do |*forwarded_args|
      char = method_name.to_s[1]
      print_surrounding(char, *forwarded_args)
    end
    send(method_name, *args)
  end

  def print_surrounding(str, *args, length: 100)
    delimiter = str * length
    p delimiter
    p(*args)
    p delimiter
  end

  def fp_factory(str, length: 100)
    lambda { |*args|
      fp(str, *args, length:)
    }
  end

  def fp(str, *args, length: 100)
    print_surrounding(str, *args, length:)
  end
end
