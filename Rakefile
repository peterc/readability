require 'rubygems'
require 'rake'
require 'rake/testtask'
load 'readability.gemspec'

begin
  require 'spec/rake/spectask'
  Spec::Rake::SpecTask.new(:spec) do |spec|
    spec.libs << 'lib' << 'spec'
    spec.spec_files = FileList['spec/**/*_spec.rb']
  end
rescue LoadError; end

desc "Run all the tests"
Rake::TestTask.new do |t|
    t.libs << "test"
    t.test_files = FileList['test/test_*.rb'] - ['test/test_helper.rb']
    t.verbose = true
end

task :default => :test
