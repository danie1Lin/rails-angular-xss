# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)
require "rails/angular-xss/version"

Gem::Specification.new do |s|
  s.name = 'rails-angular-xss'
  s.version = Rails::AngularXss::VERSION
  s.authors = ["Oliver Günther", "Henning Koch"]
  s.email = 'o.guenther@openproject.com'
  s.homepage = 'https://github.com/opf/rails-angular-xss'
  s.summary = 'Patches rails_xss so AngularJS interpolations are auto-escaped in unsafe strings.' \
              'Forked from https://github.com/makandra/angular_xss to remove HAML dependency'
  s.description = s.summary
  s.license = 'MIT'

  s.files         = `git ls-files`.split($\)
  s.test_files    = s.files.grep(%r{^spec/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'rails', '>= 5.0.0'
end
