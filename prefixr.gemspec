# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "prefixr"
  s.version     = "0.0.1"
  s.authors     = ["Jeremy Michel"]
  s.email       = ["jeremymichel91@gmail.com"]
  s.homepage    = "https://github.com/visudex/Prefixr-Gem"
  s.summary     = %q{Prefixr command line utility}
  s.description = %q{Simple command line utility for Prefixr}

  s.rubyforge_project = "prefixr"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
