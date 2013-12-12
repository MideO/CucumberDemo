require 'selenium-webdriver'
require 'watir-webdriver'

def remote_driver(grid_hub_url, desired_browser=:firefox)
  capabilities = Selenium::WebDriver::Remote::Capabilities.new(
      :browser_name=>desired_browser,
      :javascript_enabled=>true,
      :css_selectors_enabled=>true,
      :takes_screenshot=>true,
      :service_args=>['--verbose'])
  Watir::Browser.new(
      :remote,
      :url => grid_hub_url,
      :desired_capabilities => capabilities
  )
end

