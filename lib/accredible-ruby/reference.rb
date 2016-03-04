module Accredible
  class Reference

    def self.view(credential_id:, reference_id:)
      uri = Reference.api_end_point(credential_id, reference_id)
      Accredible.request(uri) 
    end

    def self.create(credential_id:, reference: {})
      params = {reference: reference}.to_json
      uri = Reference.api_end_point(credential_id)
      Accredible.request(uri, :post, params)
    end

    def self.update(credential_id:, reference_id:, reference: {})
      uri =  Reference.api_end_point(credential_id, reference_id)
      params = {reference: reference}.to_json
      Accredible.request(uri, :put, params)
    end

    def self.delete(credential_id:, reference_id:)
      uri =  Reference.api_end_point(credential_id, reference_id)
      Accredible.request(uri, :delete)
    end

    def self.api_end_point(credential_id, reference_id = nil)
      @url = Accredible.api_url("credentials/#{credential_id}/references/#{reference_id}")
    end
  end
end
