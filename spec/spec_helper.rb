require "webmock/rspec"
require "capybara/rspec"
require "capybara/rails"

# http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
   config.include Rails.application.routes.url_helpers
   config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
  end

  config.order = :random
end

WebMock.disable_net_connect!(allow_localhost: true)
