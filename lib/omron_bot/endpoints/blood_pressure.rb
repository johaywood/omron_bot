module OmronBot
  module Endpoints
    class BloodPressure < Base
      def self.create
        super(:blood_pressure) do
          find(:xpath, '//*[@id="txtEntry-17"]').set(rand(300))                   # systolic
          find(:xpath, '//*[@id="txtEntry-18"]').set(rand(300))                   # diastolic
          find(:xpath, '//*[@id="txtEntry-16"]').set(rand(40..180))               # pulse
          find(:xpath, '//*[@id="txtEntry-30"]').set("Via Omron Bot v#{VERSION}") # comment
        end
      end
    end
  end
end
