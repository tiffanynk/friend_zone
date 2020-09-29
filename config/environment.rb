require 'bundler/setup'
require 'tty-prompt'
require 'colorize'
require 'colorized_string'


Bundler.require

require_all 'lib'

# ActiveRecord::Base.logger = nil