$: << File.expand_path(File.dirname(__FILE__), "/../")
$: << File.expand_path(File.dirname(__FILE__), "/../lib")

require 'rubygems'
require 'test/unit'
require 'shoulda'
begin; require 'turn'; rescue LoadError; end
require 'readability'

class Test::Unit::TestCase
end