require 'bundler'

puts "RubyGems version: #{Gem::VERSION}"
puts "Bundler version: #{Bundler::VERSION}"

gem 'nio4r', '2.5.3'

require 'fileutils'
FileUtils.rm_rf '.bundle'

require 'bundler/setup'
