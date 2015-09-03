# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string-direction/version'

Gem::Specification.new do |s|
  s.name = 'string-direction'
  s.version = StringDirection::VERSION
  s.summary = 'Automatic detection of text direction (ltr, rtl or bidi) for strings'
  s.description = 'https://github.com/waiting-for-dev/string-direction/'
  s.license = 'GPL3'
  s.homepage = 'https://github.com/waiting-for-dev/string-direction/'
  s.authors = ['Marc Busqué']
  s.email = 'marc@lamarciana.com'
  s.files = `git ls-files`.split("\n")

  s.add_runtime_dependency 'yard', '~>0.8'

  s.add_development_dependency 'bundler', '~> 1.10'
  s.add_development_dependency 'rake', '~> 10.4'
  s.add_development_dependency 'rspec', '~> 3.3'
  s.add_development_dependency 'pry', '~> 0.10'
end
