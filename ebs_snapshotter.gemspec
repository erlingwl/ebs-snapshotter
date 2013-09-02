# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ebs_snapshotter/version'

Gem::Specification.new do |s|
  s.name = "ebs_snapshotter"
  s.version = EbsSnapshotter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors = ["Erling Wegger Linde"]
  s.email = ["erlingwl@gmail.com"]
  s.homepage =
  s.summary = "Snapshot EBS volumes"
  s.description = "Snapshot EBS volumes on AWS"
  
  s.executables = ["ebs_snapshotter"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.homepage = "http://github.com/erlingwl/ebs_snapshotter"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]

  s.add_dependency "thor"
  s.add_dependency "fog"

  s.add_development_dependency "rspec"
  
end