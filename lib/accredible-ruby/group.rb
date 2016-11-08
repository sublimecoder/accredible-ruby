module Accredible
  class Group

    def self.copy(source_id:, new_group_name:)
      uri = Group.copy_end_point
      params = {source_id: source_id, 
                new_group_name: new_group_name}.to_json
      Accredible.request(uri, :post, params)
    end

    def self.delete(group_id)
      uri =  Group.api_end_point(group_id)
      Accredible.request(uri, :delete)
    end

    def self.view_all
      uri = Group.view_all_end_point
      Accredible.request(uri)
    end

    def self.api_end_point(id = nil)
      Accredible.api_url("/issuer/group/#{id}")
    end

    def self.copy_end_point
      Accredible.api_url("/issuer/group/copy")
    end

    def self.view_all_end_point
      Accredible.api_url("/issuer/group")
    end
  end
end

