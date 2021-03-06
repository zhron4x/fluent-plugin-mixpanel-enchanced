# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-mixpanel-enchanced"
  spec.version       = "0.0.13"
  spec.authors       = ["zhron4x"]
  spec.email         = ["zhr0n4x@gmail.com"]
  spec.summary       = %q{Fluentd plugin to input/output event track data to mixpanel}
  spec.description   = %q{Fluentd plugin to input/output event track data to mixpanel}
  spec.homepage      = "https://github.com/zhron4x/fluent-plugin-mixpanel-enchanced"
  spec.license       = "Apache License, Version 2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "fluentd", ">= 0.10.55"
  spec.add_runtime_dependency "mixpanel-ruby", "~> 2.2.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "test-unit", "~> 3.0.2"
  spec.add_development_dependency "pry"
end
