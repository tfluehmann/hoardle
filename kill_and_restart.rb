#!/usr/bin/env ruby
puts Dir.pwd
path = File.join(Dir.pwd, "tmp", "pids", "unicorn.pid")
if File.exists?(path) && !path.empty?
  pid = File.open(path).read
  `kill -quit #{pid}`
  puts "Server killed (#{pid})"
end
`unicorn_rails -c config/unicorn.rb -D -E development`
puts "Server started"
