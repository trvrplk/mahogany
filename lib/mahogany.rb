require "redis"
require "mahogany/version"

module Mahogany
  def self.bootstrap
  	redis = Redis.new
  end
  
  def self.set(value, key)
  	redis.set(value, key)
  end
  
  def self.get(value)
  	redis.get(value)
  end
  
  def self.ladd(list, key)
  	redis.lpush(list, key)		
  end
  
  def self.lsee(list, num, num)
  	redis.lrange(list, num, num)	
  end	
end
