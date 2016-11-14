module Accredible
  class Group

    def self.delete(group_id)
      uri =  Group.api_end_point(group_id)
      Accredible.request(uri, :delete)
    end

    def self.view_all(page=1,page_size=40)
      uri = Group.view_all_end_point(page, page_size)
      Accredible.request(uri)
    end

    def self.create(group:, design_id: nil)
      params = Util.build_create_group_params(group, design_id)
      uri = Group.api_end_point
      Accredible.request(uri, :post, params)
    end

    def self.update(group_id:, group: {})
      uri =  Group.api_end_point(group_id)
      params = {group: group}.to_json
      Accredible.request(uri, :put, params)
    end

    def self.view(group_id = nil)
      uri = Group.api_end_point(group_id)
      Accredible.request(uri) 
    end

    def self.api_end_point(id = nil)
      Accredible.api_url("/issuer/group/#{id}")
    end


    def self.view_all_end_point(page,page_size)
      Accredible.api_url("/issuer/all_groups?page=#{page}&page_size={page_size}")
    end
  end
end

