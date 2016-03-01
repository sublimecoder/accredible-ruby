require "accredible-ruby/version"
require "accredible-ruby/credential"
require 'rest-client'

module Accredible
  include RestClient
  API_KEY_NOT_SET = "Please set your API Key"

  @api_base = 'https://api.accredible.com'
  @api_version = "v1"
  @api_key = API_KEY_NOT_SET

  class << self 
    attr_accessor :api_key, :api_base
  end

  def self.api_url(url='', api_base_url=nil)
    (api_base_url || @api_base) + "/#{@api_version}/"+ url
  end

  def self.request(end_point_url, method="get", values = {})
    if method == "get"
      RestClient.get(end_point_url, request_headers) 
    else
      RestClient.post(end_point_url, values, request_headers)
    end
  end

  def self.request_headers
    check_api_key
    {:content_type => "application/json",
     :authorization => "Token token=#{api_key}"}
  end

  def self.check_api_key
    if api_key == API_KEY_NOT_SET
      raise "Api Key is not set. Please use Accredible.api_key in an initializer to set the key"
    end
  end
end
