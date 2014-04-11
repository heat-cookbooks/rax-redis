
include_recipe 'apt::default'
include_recipe 'build-essential::default'

include_recipe 'redisio::default'
include_recipe 'redisio::enable'
include_recipe 'redisio::sentinel'
include_recipe 'redisio::sentinel_enable'

service "redis_sentinel_#{node[:redisio][:sentinels][0][:name]}" do
  action [ :enable, :start ]
end
