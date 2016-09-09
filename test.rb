require 'rubygems'
require 'bundler/setup'
require "dalli"

client = Dalli::Client.new("m1", {})
client.set("test", "123")
