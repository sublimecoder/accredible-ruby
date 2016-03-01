module Accredible
  class Credential
    attr_reader :url

    def initialize
      @url = api_end_point 
    end

    def self.create

    end

    def self.view

    end

    def self.delete

    end

    def self.view_all(achievement_id, email)
      uri = Credential.new.view_all_end_point(achievement_id, email)
      Accredible.request(uri)
    end

    def api_end_point
      @url = Accredible.api_url("credential")
    end

    def view_all_end_point(achievement_id, email)
      @view_all_url = Accredible.api_url("credentials?achievement_id=#{achievement_id}&email=#{email}")
    end
  end
end
