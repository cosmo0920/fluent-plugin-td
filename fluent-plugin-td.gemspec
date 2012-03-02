# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-td"
  gem.description = "Treasure Data output plugin for Fluent event collector"
  #gem.homepage    = "http://fluentd.org/"
  gem.summary     = gem.description
  gem.version     = File.read("VERSION").strip
  gem.authors     = ["Sadayuki Furuhashi"]
  #gem.email       = "frsyuki@gmail.com"
  gem.has_rdoc    = false
  #gem.platform    = Gem::Platform::RUBY
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency "fluentd", "~> 0.10.6"
  gem.add_dependency "td-client", "~> 0.8.11"
  gem.add_development_dependency "rake", ">= 0.9.2"
end
