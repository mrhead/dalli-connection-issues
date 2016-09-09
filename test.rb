require 'rubygems'
require 'bundler/setup'
require "dalli"

client = Dalli::Client.new("localhost", {})
client.set("test", "123")
