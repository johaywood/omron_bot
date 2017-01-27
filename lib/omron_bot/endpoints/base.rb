module OmronBot
  module Endpoints
    class Base
      extend Capybara::DSL

      XPATH = {
        blood_pressure: "//*[@class='lastMItem']/a[@id='model-305052']".freeze,
        steps:          "//*[@class='lastMItem']/a[@id='model-305054']".freeze,
        back:           "//*[@id='stats-stage']/div[2]/div[1]/a".freeze
      }.freeze

      private

      def self.create(endpoint)
        sleep 2
        print "Creating #{endpoint} record..."

        find(:xpath, XPATH[endpoint]).click

        yield

        click_on 'btnSaveChanges'
        sleep 2

        if find('.stats-chartsView').visible?
          print " ✓ \n"
        else
          print " X \n"
          puts "Error saving data for #{endpoint}"
          find(:xpath, XPATH[:back]).click
        end
      end
    end
  end
end
