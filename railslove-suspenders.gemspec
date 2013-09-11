# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'railslove-suspenders/version'
require 'date'

Gem::Specification.new do |s|
  s.required_ruby_version = '>= 1.9.2'
  s.add_dependency 'bundler', '~> 1.3'
  s.add_dependency 'rails', '4.0.0'
  s.add_development_dependency 'aruba', '~> 0.5'
  s.add_development_dependency 'cucumber', '~> 1.2'
  s.authors = ['stephanpavlovic']
  s.date = Date.today.strftime('%Y-%m-%d')

  s.description = <<-HERE
Suspenders is a base Rails project that you can upgrade. It is used by
railslove to get a jump start on a working app. Use Suspenders if you're in a
rush to build something amazing; don't use it if you like missing deadlines.
  HERE

  s.email = 'stephan@railslove.com'
  s.executables = `git ls-files -- bin/*`.split("\n").map { |file| File.basename(file) }
  s.extra_rdoc_files = %w[README.md LICENSE]
  s.files = `git ls-files`.split("\n")
  s.homepage = 'http://github.com/railslove/railslove-suspenders'
  s.name = 'railslove-suspenders'
  s.rdoc_options = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.summary = "Generate a Rails app using thoughtbot's best practices."
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = RailsloveSuspenders::VERSION
end
