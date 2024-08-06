# frozen_string_literal: true

module Kernel
  def method_missing(method_name, *args, &block)
    super unless method_name.to_s =~ /^p.$/

    define_singleton_method(method_name) do |*forwarded_args|
      char = method_name.to_s[1]
      fp(char, *forwarded_args)
    end
    send(method_name, *args)
  end

  def fp(str, *args, length: 100)
    delimiter = str * length
    puts delimiter
    p(*args)
    puts delimiter
  end

  def fp_factory(str, length: 100)
    lambda { |*args|
      fp(str, *args, length:)
    }
  end

  def fp_define(str, length: 100, method_name: str.strip)
    define_singleton_method("fp_#{method_name.strip}") do |*args|
      fp(str, *args, length:)
    end
  end
end
