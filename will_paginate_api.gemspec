# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "will_paginate_api/version"

Gem::Specification.new do |s|
  s.name        = "will_paginate_api"
  s.version     = WillPaginateApi::VERSION
  s.authors     = ["Vitaliy Nahaylo"]
  s.email       = ["nahaylo@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "will_paginate_api"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency "will_paginate"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "actionpack", "= 3.0.9"
  s.add_development_dependency "activesupport", "= 3.0.9"
  # s.add_runtime_dependency "rest-client"
end
