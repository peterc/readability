require 'rake/gempackagetask'

GEMSPEC = Gem::Specification.new do |s|
  s.name     = "readability"
  s.version  = "0.0.1"
  s.date     = "2010-03-23"
  s.summary  = "Extracts readable content from an HTML page"
  s.email    = "peter@petercooper.co.uk"
  s.homepage = "http://github.com/peterc/readability"
  s.description = "Extracts readable content from an HTML page"
  s.has_rdoc = false
  s.authors  = ["Peter Cooper"]
  s.files    = [
  	"Rakefile", 
  	"readability.gemspec", 
  	"README",
  	"test_on_url.rb",
    "lib/readability.rb",
    "spec/fixtures/cant_read.html",
    "spec/fixtures/sample.html",
    "spec/fixtures/should_not_truncate.txt",
    "spec/readability_spec.rb",
    "spec/spec_helper.rb"
  ]
  
  #s.test_files = [
  #  "test/test_test.rb",
  #  "test/test_helper.rb"
  #]
end

Rake::GemPackageTask.new(GEMSPEC) do |pkg|
    pkg.need_tar = true
end