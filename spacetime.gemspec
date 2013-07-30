# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spacetime/version'

Gem::Specification.new do |spec|
  spec.name          = "spacetime"
  spec.version       = Spacetime::VERSION
  spec.authors       = ["Francois Paul", "Ivor Paul"]
  spec.email         = ["francois@rails.co.za"]
  spec.description   = %q{Handy object for dealing with time spans}
  spec.summary       = %q{For use in finders, comparisons, and generally seeing if an instant falls within a timespan.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
