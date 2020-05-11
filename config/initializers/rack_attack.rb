class Rack::Attack
  Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new 

  throttle('Requests by IP', limit: 30, period: 60) do |req|
    req.ip
  end
end