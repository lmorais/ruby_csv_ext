# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_csv_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_csv_parser"
  spec.version       = RubyCsvParser::VERSION
  spec.authors       = ["Leonel Morais"]
  spec.email         = ["leonel.morais@yahoo.com.br"]
  spec.description   = "Ruby CSV Parser with extension in C"
  spec.summary       = "Ruby CSV Parser with extension in C"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths << "ext/ruby_csv_parser"
  spec.extensions    << "ext/ruby_csv_parser/extconf.rb"

  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rubygems-tasks"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end
