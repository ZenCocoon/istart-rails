# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "istart/rails/version"

Gem::Specification.new do |s|
  s.name        = "istart-rails"
  s.version     = Istart::Rails::VERSION
  s.authors     = ["Sébastien Grosjean"]
  s.email       = ["public@zencocoon.com"]
  s.homepage    = ""
  s.summary     = %q{Assets helpers to speed up new app development}
  s.description = %q{iStart-Rails is a set of common helpers to improve your app and speed up it's development}

  s.rubyforge_project = "istart-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "jquery-rails"
  s.add_runtime_dependency "chosen-rails"
  s.add_runtime_dependency "jquery-datatables-rails"
end
