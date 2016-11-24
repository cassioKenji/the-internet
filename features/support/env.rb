require 'rspec'

Pry.config.color = true

SitePrism.configure do |config|
  config.use_implicit_waits = true
end
