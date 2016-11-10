module Accredible
  class Evidence

    def self.view(credential_id: ,evidence_id:)
      uri = Evidence.api_end_point(credential_id, evidence_id)
      Accredible.request(uri) 
    end

    def self.create(credential_id:, evidence: {})
      params = {evidence_item: evidence }.to_json
      uri = Evidence.api_end_point(credential_id)
      Accredible.request(uri, :post, params)
    end

    def self.update(credential_id:, evidence_id:, evidence: {})
      uri = Evidence.api_end_point(credential_id, evidence_id)
      params = {evidence_item: evidence}.to_json
      Accredible.request(uri, :put, params)
    end

    def self.delete(credential_id:, evidence_id:)
      uri = Evidence.api_end_point(credential_id, evidence_id)
      Accredible.request(uri, :delete)
    end

    def self.api_end_point(credential_id, evidence_id = nil)
      @url = Accredible.api_url("credentials/#{credential_id}/evidence_items/#{evidence_id}")
    end

  end
end
