require "net/http"
require 'uri'

url = URI.parse("http://www.ruby-lang.org/zh-CN")
http = Net::HTTP.start(url.host, url.port)

doc = http.get(url.path)

puts doc.body
