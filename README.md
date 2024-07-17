# fancy-p

`fancy-p` is a Ruby gem that extends the Kernel module to dynamically define
print methods with different characters. It allows you to create methods like
`p!`, `p1`, `p2`, etc., which print a specified character 100 times before and after.

This exists simply because I found myself writing `p '!' * 100` too often. I
followed a similar pattern for `p 1 * 100`, `p2 * 100`, etc.

For unpermitted characters, you can use the `fp` method, which takes a string
of any length and prints it with a specified special character or str.

You can also create your own print methods `pf_factory` method.


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'fancy-p'
```

## Usage

```ruby
require 'fancy-p'

p! 'Hello, world!'
# => "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
# => "Hello, world!"
# => "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

p1 'Hello, world!'
# => "1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
# => "Hello, world!"
# => "1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
```


```rb
require 'fancy-p'

fp "@", "Hello, world!"
# => "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
# => "Hello, world!"
# => "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

fp "@", "Hello, world!", length: 14
# => "@@@@@@@@@@@@@@"
# => "Hello, world!"
# => "@@@@@@@@@@@@@@"
```

```rb
require 'fancy-p'

print_wat = fp_factory "WAT ", length: 10

print_wat['Hello, world!']
# => "WAT WAT WAT WAT WAT WAT WAT WAT WAT WAT "
# => "Hello, world!"
# => "WAT WAT WAT WAT WAT WAT WAT WAT WAT WAT "

print_wat['Some other string']
# => "WAT WAT WAT WAT WAT WAT WAT WAT WAT WAT "
# => "Some other string"
# => "WAT WAT WAT WAT WAT WAT WAT WAT WAT WAT "
```
