# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano_osx_notifications/version'

Gem::Specification.new do |gem|
  gem.name          = "capistrano_osx_notifications"
  gem.version       = CapistranoOSXNotifications::VERSION
  gem.authors       = ["Timo Schilling"]
  gem.email         = ["timo@schilling.io"]
  gem.description   = %q{OSX Notifications for Capistrano.}
  gem.summary       = %q{OSX Notifications for Capistrano.}
  gem.homepage      = "https://github.com/timoschilling/capistrano_osx_notifications"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "capistrano", "~> 2"
  gem.add_dependency "terminal-notifier"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "capistrano-spec"
end
