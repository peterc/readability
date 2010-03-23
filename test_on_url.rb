require 'open-uri'

$: << File.expand_path(File.dirname($0) + "/lib")
require 'readability'

text = open(ARGV.first).read
p Readability::Document.new(text).content