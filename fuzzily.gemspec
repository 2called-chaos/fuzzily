lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fuzzily/version"

Gem::Specification.new do |spec|
  spec.name          = "fuzzily_reloaded"
  spec.version       = Fuzzily::VERSION
  spec.authors       = ["Julien Letessier", "Sven Pachnit"]
  spec.email         = ["julien.letessier@gmail.com", "sven@bmonkeys.net"]
  spec.description   = %q{Fast fuzzy string matching for rails}
  spec.summary       = %q{A fast, trigram-based, database-backed fuzzy string search/match engine for Rails.}
  spec.homepage      = "http://github.com/2called-chaos/fuzzily"
  spec.license       = "MIT"

  spec.add_runtime_dependency "activerecord", ">= 5.1"
  spec.add_runtime_dependency "logger", ">= 1.4"
  spec.add_runtime_dependency "ostruct"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
