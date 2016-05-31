require "coveralls"

Coveralls.wear! if ENV["COVERAGE"] == "true"

require_relative "../../lib/xsdml"
require "nokogiri"
