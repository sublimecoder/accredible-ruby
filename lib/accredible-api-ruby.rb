require "accredible-api-ruby/version"
require "accredible-api-ruby/credential"
require "accredible-api-ruby/group"
require "accredible-api-ruby/evidence"
require "accredible-api-ruby/reference"
require "accredible-api-ruby/design"
require "accredible-api-ruby/errors/accredible_error"
require "accredible-api-ruby/errors/authentication_error"
require "accredible-api-ruby/util"
require "json"
require "rest-client"

module Accredible
  include RestClient
  API_KEY_NOT_SET = "No API Key"

  @api_base = "https://api.accredible.com"
  @api_version = "v1"
  @api_key = API_KEY_NOT_SET

  class << self 
    attr_accessor :api_key, :api_base
  end

  def self.api_url(url='', api_base_url=nil)
    Accredible.check_api_key
    (api_base_url || @api_base) + "/#{@api_version}/"+ url
  end

  def self.request(end_point_url, method = :get, values = {})
    Accredible.check_api_key

    request_headers = Accredible.request_headers

    if method == :get
      RestClient.get(end_point_url, request_headers) 
    elsif method == :put
      RestClient.put(end_point_url, values, request_headers)
    elsif method == :delete
      RestClient.delete(end_point_url)
    else
      RestClient.post(end_point_url, values, request_headers)
    end
  end

  def self.request_headers
    {:content_type => "application/json",
     :authorization => "Token token=#{api_key}"}
  end

  def self.check_api_key
    if api_key == API_KEY_NOT_SET || api_key.nil?
      raise  AuthenticationError.new("No API key provided. " \
                                     "Set your API key using \"Accredible.api_key = <API-KEY>\". " \
                                     "If you need an api key please visit https://accredible.com for " \
                                     "details, or email support@accredible.com ")
    end
  end
end
