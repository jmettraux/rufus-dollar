# encoding: utf-8

Gem::Specification.new do |s|

  s.name = 'rufus-dollar'
  s.version = `cat lib/rufus/dollar.rb | grep VERSION | sed "s/[^0-9\.]//g"`
  s.platform = Gem::Platform::RUBY
  s.authors = [ 'John Mettraux' ]
  s.email = [ 'jmettraux@gmail.com' ]
  s.homepage = 'http://rufus.rubyforge.org'
  s.rubyforge_project = 'rufus'
  s.summary = '${xxx} substitutions'
  s.description = %{
${xxx} substitutions
  }

  s.files = `git ls-files`.split("\n")

  #s.add_runtime_dependency 'rufus-json', '>= 0.2.5'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', ">= 2.0"

  s.require_path = 'lib'
end

