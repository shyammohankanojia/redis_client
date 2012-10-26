MonitorRedis::Application.routes.draw do
  
  require 'redmon/app'
  mount Redmon::App => '/redmon'
  root :to => 'home#index'
  
end
