require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'selenium-webdriver'

Capybara.register_driver :docker do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        "chromeOptions": {
            "excludeSwitches": ['enable-automation'],
            "args": ["--start-maximized", '--no-sandbox', '--disable-dev-shm-usage']
        }
    )

    Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        url: "http://localhost:4444/wd/hub",
        desired_capabilities: caps
    )
end

Capybara.configure do |config|
    config.run_server = false
    config.default_max_wait_time = 15
    Capybara.default_driver = :docker
end