module Accredible
  class Design

    def self.view_all
      uri = Design.view_all_end_point
      Accredible.request(uri)
    end

    def self.view_all_end_point
      Accredible.api_url("issuer/all_designs")
    end
  end
end