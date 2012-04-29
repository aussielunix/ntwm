# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','ntwm', 'version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'ntwm'
  s.version = Ntwm::VERSION
  s.author = 'Mick Pollard'
  s.email = 'aussielunix@gmail.com'
  s.homepage = 'http://www.lunix.com.au'
  s.platform = Gem::Platform::RUBY
  s.summary = "Next Time We Meet - record things against a person's name for discussion next time you catch up."
  s.files = Dir.glob("{bin,lib}/**/*")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','ntwm.rdoc']
  s.rdoc_options << '--title' << 'ntwm' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'ntwm'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_runtime_dependency('gli')
end
