# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "namespaces"
  s.version     = "0.0.3"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Aleksandr Furmanov"]
  s.email       = ["aleksandr.furmanov@gmail.com"]
  s.homepage    = "http://github.com/afurmanov/namespaces"
  s.summary     = %{Get lexical context of self as array of modules}
  s.description = %{Get lexical context of self as array of modules}
  s.required_rubygems_version = ">= 1.3.6"
  s.add_development_dependency "shoulda"
  s.files = Dir["[A-Z]*", "{lib,test,examples}/**/*"]
end
