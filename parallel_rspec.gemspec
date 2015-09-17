# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parallel_rspec/version'

Gem::Specification.new do |spec|
  spec.name          = "parallel_rspec"
  spec.version       = ParallelRSpec::VERSION
  spec.authors       = ["Will Bryant, Powershop New Zealand Ltd"]
  spec.email         = ["will.bryant@gmail.com"]

  spec.summary       = %q{This gem lets you run your RSpec examples in parallel across across your CPUs..}
  spec.description   = %q{This gem lets you run your RSpec examples in parallel across across your CPUs.  Each worker automatically gets its own database to avoid conflicts.}
  spec.homepage      = "https://github.com/willbryant/parallel_rspec"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
