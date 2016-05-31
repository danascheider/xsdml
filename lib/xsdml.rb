require "nokogiri"

path = File.join(File.dirname(__FILE__), "**/*")
Dir[path].each {|f| require f if f.match(/\.rb$/) }
