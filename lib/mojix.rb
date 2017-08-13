$:.unshift(File.dirname(File.expand_path(__FILE__)) + '/mojix/generated')

require 'mojix/version'
require 'mojix/client'
require 'mojix/generated/tokenizer_pb'
require 'mojix/generated/tokenizer_services_pb'

module Mojix
end
