#### Food Finder ####

## Launch this Ruby folder from the command line to get started

APP_ROOT = File.dirname(__FILE__)

# require "#{APP_ROOT}/lib/guide"
# require File.join(APP_ROOT, 'lib', guide.rb)
# require File.join(APP_ROOT, 'lib', guide)

$:.unshift(File.join(APP_ROOT))

require 'lib/guide'
require 'spec/guide_spec'

guide = Guide.new('restaurants.txt')
guide.launch!
