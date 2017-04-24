# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "fcntl"
  spec.version       = "0.0.1"
  spec.authors       = ["SHIBATA Hiroshi"]
  spec.email         = ["hsbt@ruby-lang.org"]

  spec.summary       = "Loads constants defined in the OS fcntl.h C header file"
  spec.description   = "Loads constants defined in the OS fcntl.h C header file"
  spec.homepage      = "https://github.com/ruby/fcntl"
  spec.license       = "BSD-2-Clause"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.5.0dev"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "minitest", "~> 5.0"
end
