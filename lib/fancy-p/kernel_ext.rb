# frozen_string_literal: true

module Kernel
  def method_missing(method_name, *args, &block)
    super unless method_name.to_s =~ /^p.$/

    char = method_name.to_s[1]
    self.class.define_method(method_name) do |*forwarded_args|
      delimiter = char * 100
      p delimiter
      p(*forwarded_args)
      p delimiter
    end
    send(method_name, *args)
  end
end
