module OmronBot
  module Endpoints
    class Steps < Base
      def self.create
        super(:steps) do
          find(:xpath, '//*[@id="txtEntry-6"]').set(rand(250000))                 # total steps
          find(:xpath, '//*[@id="txtEntry-7"]').set(rand(250000))                 # aerobic steps
          find(:xpath, '//*[@id="txtEntry-8"]').set(rand(1440))                   # aerobic walking time
          find(:xpath, '//*[@id="txtEntry-10"]').set(rand(100000))                # calories
          find(:xpath, '//*[@id="txtEntry-15"]').set(rand(622))                   # distance
          find(:xpath, '//*[@id="txtEntry-30"]').set("Via Omron Bot v#{VERSION}") # comment
        end
      end
    end
  end
end
