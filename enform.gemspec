# -*- encoding: utf-8 -*-
require File.expand_path('../lib/enform/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Christian Trosclair"]
  gem.email         = ["christian.trosclair@gmail.com"]
  gem.description   = %q{TODO: Create forms for your existing models!}
  gem.summary       = %q{TODO: Makes some assupmtions right now for your setup, will be more modular later on}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "enform"
  gem.require_paths = ["lib"]
  gem.version       = Enform::VERSION
end
