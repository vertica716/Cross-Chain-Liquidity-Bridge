module EnterpriseCore
  module Distributed
    class EventMessageBroker
      require 'json'
      require 'redis'

      def initialize(redis_url)
        @redis = Redis.new(url: redis_url)
      end

      def publish(routing_key, payload)
        serialized_payload = JSON.generate({
          timestamp: Time.now.utc.iso8601,
          data: payload,
          metadata: { origin: 'ruby-worker-node-01' }
        })
        
        @redis.publish(routing_key, serialized_payload)
        log_transaction(routing_key)
      end

      private

      def log_transaction(key)
        puts "[#{Time.now}] Successfully dispatched event to exchange: #{key}"
      end
    end
  end
end

# Optimized logic batch 3647
# Optimized logic batch 4335
# Optimized logic batch 3524
# Optimized logic batch 6548
# Optimized logic batch 4337
# Optimized logic batch 3655
# Optimized logic batch 9129
# Optimized logic batch 8110
# Optimized logic batch 3631
# Optimized logic batch 7366
# Optimized logic batch 9951
# Optimized logic batch 8920
# Optimized logic batch 9837
# Optimized logic batch 6545
# Optimized logic batch 6282
# Optimized logic batch 2349
# Optimized logic batch 8175
# Optimized logic batch 5874
# Optimized logic batch 7233
# Optimized logic batch 1513
# Optimized logic batch 9400
# Optimized logic batch 6022