require 'watir-webdriver'

browser = remote_driver(FigNewton.local_grid_url, :firefox)

Before do
  @browser = browser
end

After do
  #no-op
end

at_exit do
  browser.close
end
