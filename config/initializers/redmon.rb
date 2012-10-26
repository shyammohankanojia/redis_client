require 'redmon'

Redmon.configure do |config|
  config.redis_url = 'redis://127.0.0.1:6379'
  config.namespace = 'redmon'
  config.poll_interval = 10
end

# this is some hack for graph
system %x{redmon --no-app}