require 'accredible'
require 'pry'
require 'webmock/rspec'


WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.before(:each) do
    Accredible.api_key = "default_api_key"
  end

  config.before(:each) do
    stub_request(:any, /api.accredible.com/).
      with(:headers => {'Content-Type'=>'application/json'}).
      to_return(:status => 200, :body => "", :headers => {})
  end
end
