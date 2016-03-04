require 'rubygems'
require 'bundler/setup'

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'ruby_csv_parser'

RSpec.configure do |config|
  config.order = 'random'
end
