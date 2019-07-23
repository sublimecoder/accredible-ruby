module Accredible
  class Credential

    def self.view(id = nil)
      uri = Credential.api_end_point(id)
      Accredible.request(uri)
    end

    def self.create(recipient:, credential:, evidence: [], references: [])
      params = Util.build_create_credential_params(recipient, credential, evidence, references)
      uri = Credential.api_end_point
      Accredible.request(uri, :post, params)
    end

    def self.update(id:, credential: {})
      uri =  Credential.api_end_point(id)
      params = {credential: credential}.to_json
      Accredible.request(uri, :put, params)
    end

    def self.delete(id)
      uri =  Credential.api_end_point(id)
      Accredible.request(uri, :delete)
    end

    def self.view_all(group_id: nil, email: nil, page: 1, page_size: 20)
      uri = Credential.view_all_end_point(group_id: group_id, email: email, page: page, page_size: page_size)
      Accredible.request(uri)
    end

    def self.api_end_point(id = nil)
      Accredible.api_url("credentials/#{id}")
    end

    def self.view_all_end_point(group_id: nil, email: nil, page: 1, page_size: 20)
      params = {
        page:      page,
        page_size: page_size
      }
      params[:group_id] = group_id if !!group_id
      params[:email]    = email    if !!email

      param_string = params.map { |x| "#{x[0]}=#{x[1]}" }.join("&")

      Accredible.api_url("all_credentials?#{param_string}")
    end
  end
end
