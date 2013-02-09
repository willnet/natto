# coding: utf-8
$:.unshift('lib')
require 'rubygems' if RUBY_VERSION.to_f < 1.9
require 'natto/version'

Gem::Specification.new do |s|
  s.name = 'natto'
  s.version = Natto::VERSION
  s.add_dependency('ffi', '>= 0.6.3')
  s.license = 'BSD'
  s.summary = 'natto combines the Ruby programming language with MeCab, the part-of-speech and morphological analyzer for the Japanese language.'
  s.description = <<END_DESC
natto is a gem bridging Ruby and MeCab using FFI (foreign function interface). No compilation is necessary, and natto will run on CRuby (mri/yarv) and JRuby (jvm) equally well, on any OS.
ruby で mecab を自由に利用できる natto をぜひ試してください。
END_DESC
  s.author = 'Brooke M. Fujita'
  s.email = 'buruzaemon@gmail.com'
  s.homepage = 'https://bitbucket.org/buruzaemon/natto'
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.8.7'
  s.require_path = 'lib'
  s.requirements << 'MeCab, 0.995 or greater'
  s.requirements << 'FFI, 1.3.1 or greater'
  s.files = [
    'lib/natto.rb', 
    'lib/natto/binding.rb', 
    'lib/natto/option_parse.rb', 
    'lib/natto/utils.rb', 
    'lib/natto/version.rb', 
    'README.md',
    'LICENSE', 
    'CHANGELOG',
    '.yardopts'
  ]
end
