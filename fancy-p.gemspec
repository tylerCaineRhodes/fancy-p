Gem::Specification.new do |s|
  s.name          = "fancy-p"
  s.version       = "0.5.0"
  s.authors       = ["Tyler Rhodes"]
  s.email         = ["tyler.rhodes@aya.yale.edu"]

  s.summary       = "A gem that dynamically defines fancy print methods with different characters"
  s.description   = "This gem extends the Kernel module to dynamically define
    fancy print methods that print with different characters."

  s.homepage      = "https://github.com/tylerCaineRhodes/fancy-p"
  s.license       = "MIT"

  s.files         = Dir["lib/**/*", "README.md", "LICENSE"]
  s.require_paths = ["lib"]

  s.required_ruby_version = '>= 2.0.0'
  s.metadata["rubygems_mfa_required"] = "true"
end
