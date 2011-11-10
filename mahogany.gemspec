# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mahogany/version"

Gem::Specification.new do |s|
  s.name        = "mahogany"
  s.version     = Mahogany::VERSION
  s.authors     = ["superhappyfuntime"]
  s.email       = ["keymint1498@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Easy Redis in Ruby code}
  s.description = %q{Easy Redis in Ruby code}

  s.rubyforge_project = "mahogany"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  
  s.add_runtime_dependency "redis"
end
