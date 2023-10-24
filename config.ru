require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../modele", __FILE__)

require_relative 'controller'

run ApplicationController

