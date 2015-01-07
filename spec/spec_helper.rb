# encoding: utf-8

require 'simplecov'

SimpleCov.start do
  add_filter '/vendor/'
  add_filter '/spec/'
  add_filter '/features/'
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rt_api'
