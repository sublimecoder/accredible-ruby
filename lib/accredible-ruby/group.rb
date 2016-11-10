module Accredible
  class Group

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


    def self.view_all_end_point
      Accredible.api_url("/issuer/group")
    end
  end
end

