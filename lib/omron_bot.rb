require_relative 'omron_bot/endpoints.rb'
require_relative 'omron_bot/version.rb'
require_relative 'omron_bot/config.rb'

module OmronBot
  extend Capybara::DSL

  def self.create_data
    login
    Endpoints::BloodPressure.create
    Endpoints::Steps.create
    puts "Done! \n"
  end

  def self.login
    visit('/')
    print 'Logging in...'
    click_on 'Log on'
    fill_in 'UserName', with: Config.email
    fill_in 'Password', with: Config.password
    click_on 'Log On'
    print " ✓ \n"
  end
end
