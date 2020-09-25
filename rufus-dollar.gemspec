
Gem::Specification.new do |s|

  s.name = 'rufus-dollar'

  s.version = File.read(
    File.expand_path('../lib/rufus/dollar.rb', __FILE__)
  ).match(/ VERSION *= *['"]([^'"]+)/)[1]

  s.platform = Gem::Platform::RUBY
  s.authors = [ 'John Mettraux' ]
  s.email = [ 'jmettraux@gmail.com' ]
  s.homepage = 'https://github.com/jmettraux/rufus-dollar'
  s.summary = '${xxx} substitutions'
  s.description = %{
${xxx} substitutions
  }

  #s.files = `git ls-files`.split("\n")
  s.files = Dir[
    'Rakefile',
    'lib/**/*.rb', 'spec/**/*.rb', 'test/**/*.rb',
    '*.gemspec', '*.txt', '*.rdoc', '*.md'
  ]

  #s.add_runtime_dependency 'rufus-json', '>= 0.2.5'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', ">= 2.0"

  s.require_path = 'lib'
end

