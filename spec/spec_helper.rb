if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

require 'accredible-api-ruby'
require 'pry'
require 'webmock/rspec'

WebMock.disable_net_connect!(allow_localhost: true, allow: "codeclimate.com")

Dir["./spec/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    config.include CredentialHelper
    config.include EvidenceHelper
    config.include GroupHelper
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
      to_return(:status => 200, :body => "Stubbed Request", :headers => {})

    stub_request(:delete, /api.accredible.com/).
      to_return(:status => 200, :body => "Stubbed Request", :headers => {})
  end
end
